-module(worldnewsapi_news).

-export([encode/1]).

-export_type([worldnewsapi_news/0]).

-type worldnewsapi_news() ::
    #{ 'id' => integer(),
       'title' => binary(),
       'text' => binary(),
       'summary' => binary(),
       'url' => binary(),
       'image' => binary(),
       'publish_date' => binary(),
       'author' => binary(),
       'language' => binary(),
       'source_country' => binary(),
       'sentiment' => integer()
     }.

encode(#{ 'id' := Id,
          'title' := Title,
          'text' := Text,
          'summary' := Summary,
          'url' := Url,
          'image' := Image,
          'publish_date' := PublishDate,
          'author' := Author,
          'language' := Language,
          'source_country' := SourceCountry,
          'sentiment' := Sentiment
        }) ->
    #{ 'id' => Id,
       'title' => Title,
       'text' => Text,
       'summary' => Summary,
       'url' => Url,
       'image' => Image,
       'publish_date' => PublishDate,
       'author' => Author,
       'language' => Language,
       'source_country' => SourceCountry,
       'sentiment' => Sentiment
     }.
