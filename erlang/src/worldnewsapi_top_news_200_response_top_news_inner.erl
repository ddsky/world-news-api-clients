-module(worldnewsapi_top_news_200_response_top_news_inner).

-export([encode/1]).

-export_type([worldnewsapi_top_news_200_response_top_news_inner/0]).

-type worldnewsapi_top_news_200_response_top_news_inner() ::
    #{ 'news' => list()
     }.

encode(#{ 'news' := News
        }) ->
    #{ 'news' => News
     }.
