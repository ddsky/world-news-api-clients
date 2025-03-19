-module(worldnewsapi_search_news_sources_200_response_sources_inner).

-export([encode/1]).

-export_type([worldnewsapi_search_news_sources_200_response_sources_inner/0]).

-type worldnewsapi_search_news_sources_200_response_sources_inner() ::
    #{ 'name' => binary(),
       'url' => binary(),
       'language' => binary()
     }.

encode(#{ 'name' := Name,
          'url' := Url,
          'language' := Language
        }) ->
    #{ 'name' => Name,
       'url' => Url,
       'language' => Language
     }.
