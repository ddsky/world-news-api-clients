-module(worldnewsapi_extract_links_response).

-export([encode/1]).

-export_type([worldnewsapi_extract_links_response/0]).

-type worldnewsapi_extract_links_response() ::
    #{ 'news_links' => list()
     }.

encode(#{ 'news_links' := NewsLinks
        }) ->
    #{ 'news_links' => NewsLinks
     }.
