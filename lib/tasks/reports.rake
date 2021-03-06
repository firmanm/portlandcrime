require 'pathname'
require 'pp'
require 'csv'
require 'name_map'

namespace :crime do
  namespace :reports do
    
    def rm_cache
      cache_file = Rails.root + 'public/cache'
      FileUtils.rm_r(cache_file) if File.exists?(cache_file)
    end
    
    desc 'Run all reports'
    task :all => [:crime_totals, :ytd_offense_summaries, :neighborhood_offense_totals, :historical_offense_counts]
    
    desc 'Run Crime Totals For last year & this year'
    task :crime_totals => :environment do
      [(Time.now - 1.year).year, Time.now.year].each do |year|
        start = Time.parse("01/01/#{year}")
        Crime.weekly_totals_between(start, start.end_of_year)
        puts "[#{Time.zone.now}] Calculated #{year} weekly crime totals"
        
        Crime.monthly_totals_between(start, start.end_of_year)
        puts "[#{Time.zone.now}] Calculated #{year} monthly crime totals"
      end
      rm_cache
    end
  
    desc 'Run YTD Offense Summaries'
    task :ytd_offense_summaries => :environment do
      Offense.summaries_for_the_past(Time.zone.now.yday.days)
      puts "[#{Time.zone.now}] Calculated offenses summaries"
      rm_cache
    end
  
    desc 'Run Neighborhood Crime Stats'
    task :neighborhood_offense_totals => :environment do
      # Crimes trickle in over a course of two weeks, making up to the day reporting slighly inaccurate 
      # when making historical comparisons, so we trim off two weeks to account for this volatility
      threshold = Time.now.yday > 14 ? 2.weeks : 0.days
      Neighborhood.offense_totals_between(Time.now.beginning_of_year, Time.now - threshold)
      Neighborhood.offense_totals_between(Time.now.beginning_of_year - 1.year, (Time.now - threshold) - 1.year)
      puts "[#{Time.zone.now}] Calculated neighborhood statistics"
      rm_cache
    end
    
    desc 'Run Historical totals for Offenses'
    task :historical_offense_counts => :environment do
      start = Time.now.beginning_of_year - 1.year
      finish = Time.now.end_of_month  - 1.month
      Offense.count_of_crimes_in_offense_between(start, finish)
      puts "[#{start.year}-#{finish.year}] Calculated historical offense statistics"
    end
    rm_cache
  end
end
  