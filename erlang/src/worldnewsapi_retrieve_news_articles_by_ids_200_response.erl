-module(worldnewsapi_retrieve_news_articles_by_ids_200_response).

-export([encode/1]).

-export_type([worldnewsapi_retrieve_news_articles_by_ids_200_response/0]).

-type worldnewsapi_retrieve_news_articles_by_ids_200_response() ::
    #{ 'news' => list()
     }.

encode(#{ 'news' := News
        }) ->
    #{ 'news' => News
     }.
