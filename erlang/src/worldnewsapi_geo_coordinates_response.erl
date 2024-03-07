-module(worldnewsapi_geo_coordinates_response).

-export([encode/1]).

-export_type([worldnewsapi_geo_coordinates_response/0]).

-type worldnewsapi_geo_coordinates_response() ::
    #{ 'latitude' := integer(),
       'longitude' := integer(),
       'city' => binary()
     }.

encode(#{ 'latitude' := Latitude,
          'longitude' := Longitude,
          'city' := City
        }) ->
    #{ 'latitude' => Latitude,
       'longitude' => Longitude,
       'city' => City
     }.
