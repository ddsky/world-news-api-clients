-module(worldnewsapi_top_news_200_response).

-export([encode/1]).

-export_type([worldnewsapi_top_news_200_response/0]).

-type worldnewsapi_top_news_200_response() ::
    #{ 'top_news' => list(),
       'language' => binary(),
       'country' => binary()
     }.

encode(#{ 'top_news' := TopNews,
          'language' := Language,
          'country' := Country
        }) ->
    #{ 'top_news' => TopNews,
       'language' => Language,
       'country' => Country
     }.
