-module(worldnewsapi_get_geo_coordinates_200_response).

-export([encode/1]).

-export_type([worldnewsapi_get_geo_coordinates_200_response/0]).

-type worldnewsapi_get_geo_coordinates_200_response() ::
    #{ 'latitude' => integer(),
       'longitude' => integer(),
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
