-module(openapi_inline_response_200_3).

-export([encode/1]).

-export_type([openapi_inline_response_200_3/0]).

-type openapi_inline_response_200_3() ::
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
