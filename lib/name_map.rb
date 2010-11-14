# Maps neighborhood names in crime dataset with neighborhood names in the 
# neighborhoods dataset containing the geo data.
if !defined?(PDX_NHOODS_NAME_MAP)
  PDX_NHOODS_NAME_MAP = {
    "ARDENWALD" => "ARDENWALD-JOHNSON CREEK",
    "ARLINGTON HGHTS" => "ARLINGTON HEIGHTS",
    "BEAUMONT-WILSHR" => "BEAUMONT-WILSHIRE",
    "BEAVERTON - FIVE OAKS" => "",
    "BEAVERTON - WEST SLOPE" => "",
    "BEAVERTON SEXTON MTN" => "",
    "BRENTWD-DARLNGT" => "BRENTWOOD-DARLINGTON",
    "BROOKLYN" => "BROOKLYN ACTION CORPS",
    "BUCKMAN-EAST" => "BUCKMAN",
    "BUCKMAN-WEST" => "BUCKMAN",
    "CENTRAL BEAVERTON" => "",
    "CHINA/OLD TOWN" => "OLD TOWN/CHINATOWN",
    "CRSTN-KENILWTH" => "CRESTON-KENILWORTH",
    "E COLUMBIA" => "EAST COLUMBIA",
    "GREENWAY" => "",
    "GRESHAM - CENTENNIAL EAST" => "",
    "GRESHAM - DOWNTOWN" => "",
    "GRESHAM - GRESHAM BUTTE" => "",
    "GRESHAM - HOLLYBROOK" => "",
    "GRESHAM - KELLY CREEK" => "",
    "GRESHAM - MT. HOOD" => "",
    "GRESHAM - NORTH CENTRAL" => "",
    "GRESHAM - NORTH GRESHAM" => "",
    "GRESHAM - NORTHWEST GRESH" => "",
    "GRESHAM - POWELL VALLEY" => "",
    "GRESHAM - ROCKWOOD GROUP" => "",
    "GRESHAM - SOUTHWEST GRESH" => "",
    "GRESHAM - WILKES EAST" => "",
    "HEALY HEIGHTS" => "HEALY HEIGHTS/SOUTHWEST HILLS",
    "HIGHLAND" => "", # SYLVAN-HIGHLANDS?
    "HOSFRD-ABRNETHY" => "HOSFORD-ABERNETHY",
    "LKOS - MOUNTAIN PARK" => "",
    "LLOYD" => "LLOYD DISTRICT",
    "MT SCOTT-ARLETA" => "MT. SCOTT-ARLETA",
    "MT TABOR" => "MT. TABOR",
    "NORTHWEST" => "NORTHWEST DISTRICT",
    "NORTHWEST HTS" => "NORTHWEST HEIGHTS",
    "NORTHWEST IND" => "NORTHWEST DISTRICT/NORTHWEST INDUSTRIAL",
    "PARKROSE HGTS" => "PARKROSE HEIGHTS",
    "POWELHST-GILBRT" => "POWELLHURST-GILBERT",
    "RALEIGH WEST" => "",
    "S BURLINGAME" => "SOUTH BURLINGAME",
    "SELLWD-MORELAND" => "SELLWOOD-MORELAND IMPROVEMENT LEAGUE",
    "ST JOHNS" => "ST. JOHNS",
    "SULLIVANS GULCH" => "SULLIVAN'S GULCH",
    "SYLVAN-HIGHLNDS" => "SYLVAN-HIGHLANDS",
    "W PORTLAND PARK" => "WEST PORTLAND PARK"
  }
end