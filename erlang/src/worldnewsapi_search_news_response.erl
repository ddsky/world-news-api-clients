-module(worldnewsapi_search_news_response).

-export([encode/1]).

-export_type([worldnewsapi_search_news_response/0]).

-type worldnewsapi_search_news_response() ::
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
