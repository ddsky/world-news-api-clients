-module(openapi_inline_response_200_2).

-export([encode/1]).

-export_type([openapi_inline_response_200_2/0]).

-type openapi_inline_response_200_2() ::
    #{ 'news_links' => list()
     }.

encode(#{ 'news_links' := NewsLinks
        }) ->
    #{ 'news_links' => NewsLinks
     }.
