-module(worldnewsapi_search_news_200_response_news_inner).

-export([encode/1]).

-export_type([worldnewsapi_search_news_200_response_news_inner/0]).

-type worldnewsapi_search_news_200_response_news_inner() ::
    #{ 'summary' => binary(),
       'image' => binary(),
       'sentiment' => integer(),
       'author' => binary(),
       'language' => binary(),
       'video' => binary(),
       'title' => binary(),
       'url' => binary(),
       'source_country' => binary(),
       'id' => integer(),
       'text' => binary(),
       'publish_date' => binary(),
       'authors' => list()
     }.

encode(#{ 'summary' := Summary,
          'image' := Image,
          'sentiment' := Sentiment,
          'author' := Author,
          'language' := Language,
          'video' := Video,
          'title' := Title,
          'url' := Url,
          'source_country' := SourceCountry,
          'id' := Id,
          'text' := Text,
          'publish_date' := PublishDate,
          'authors' := Authors
        }) ->
    #{ 'summary' => Summary,
       'image' => Image,
       'sentiment' => Sentiment,
       'author' => Author,
       'language' => Language,
       'video' => Video,
       'title' => Title,
       'url' => Url,
       'source_country' => SourceCountry,
       'id' => Id,
       'text' => Text,
       'publish_date' => PublishDate,
       'authors' => Authors
     }.
