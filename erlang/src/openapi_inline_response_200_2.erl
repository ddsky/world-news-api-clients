-module(openapi_inline_response_200_2).

-export([encode/1]).

-export_type([openapi_inline_response_200_2/0]).

-type openapi_inline_response_200_2() ::
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
