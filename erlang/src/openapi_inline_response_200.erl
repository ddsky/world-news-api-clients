-module(openapi_inline_response_200).

-export([encode/1]).

-export_type([openapi_inline_response_200/0]).

-type openapi_inline_response_200() ::
    #{ 'offset' := integer(),
       'number' := integer(),
       'available' := integer(),
       'news' := list()
     }.

encode(#{ 'offset' := Offset,
          'number' := Number,
          'available' := Available,
          'news' := News
        }) ->
    #{ 'offset' => Offset,
       'number' => Number,
       'available' => Available,
       'news' => News
     }.
