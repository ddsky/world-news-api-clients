-module(worldnewsapi_search_news_sources_200_response).

-export([encode/1]).

-export_type([worldnewsapi_search_news_sources_200_response/0]).

-type worldnewsapi_search_news_sources_200_response() ::
    #{ 'available' => integer(),
       'sources' => list()
     }.

encode(#{ 'available' := Available,
          'sources' := Sources
        }) ->
    #{ 'available' => Available,
       'sources' => Sources
     }.
