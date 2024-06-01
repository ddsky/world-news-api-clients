-module(worldnewsapi_extract_news_200_response).

-export([encode/1]).

-export_type([worldnewsapi_extract_news_200_response/0]).

-type worldnewsapi_extract_news_200_response() ::
    #{ 'title' => binary(),
       'text' => binary(),
       'url' => binary(),
       'image' => binary(),
       'publish_date' => binary(),
       'author' => binary(),
       'language' => binary(),
       'source_country' => binary(),
       'sentiment' => integer()
     }.

encode(#{ 'title' := Title,
          'text' := Text,
          'url' := Url,
          'image' := Image,
          'publish_date' := PublishDate,
          'author' := Author,
          'language' := Language,
          'source_country' := SourceCountry,
          'sentiment' := Sentiment
        }) ->
    #{ 'title' => Title,
       'text' => Text,
       'url' => Url,
       'image' => Image,
       'publish_date' => PublishDate,
       'author' => Author,
       'language' => Language,
       'source_country' => SourceCountry,
       'sentiment' => Sentiment
     }.
