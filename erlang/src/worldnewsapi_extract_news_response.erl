-module(worldnewsapi_extract_news_response).

-export([encode/1]).

-export_type([worldnewsapi_extract_news_response/0]).

-type worldnewsapi_extract_news_response() ::
    #{ 'title' => binary(),
       'text' => binary(),
       'url' => binary(),
       'image' => binary(),
       'author' => binary(),
       'language' => binary(),
       'source_country' => binary(),
       'sentiment' => integer()
     }.

encode(#{ 'title' := Title,
          'text' := Text,
          'url' := Url,
          'image' := Image,
          'author' := Author,
          'language' := Language,
          'source_country' := SourceCountry,
          'sentiment' := Sentiment
        }) ->
    #{ 'title' => Title,
       'text' => Text,
       'url' => Url,
       'image' => Image,
       'author' => Author,
       'language' => Language,
       'source_country' => SourceCountry,
       'sentiment' => Sentiment
     }.
