class RoutesController < ApplicationController
  caches_page :index, :type
  
  def index
    
  end
  
  def type
    respond_to do |wants|
      wants.html {}
      wants.geojson do
        case params[:type].to_sym
          when :max       then routes = TrimetRoute.max_routes.all
          when :streetcar then routes = TrimetRoute.streetcar_routes.all
          when :rail      then routes = TrimetRoute.rail_routes.all
        end
        
        render :geojson => routes
      end
    end
  end
end