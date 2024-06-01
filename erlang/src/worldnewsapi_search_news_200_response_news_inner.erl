-module(worldnewsapi_search_news_200_response_news_inner).

-export([encode/1]).

-export_type([worldnewsapi_search_news_200_response_news_inner/0]).

-type worldnewsapi_search_news_200_response_news_inner() ::
    #{ 'summary' => binary(),
       'image' => binary(),
       'sentiment' => integer(),
       'source_country' => binary(),
       'language' => binary(),
       'id' => integer(),
       'text' => binary(),
       'title' => binary(),
       'publish_date' => binary(),
       'url' => binary(),
       'authors' => list()
     }.

encode(#{ 'summary' := Summary,
          'image' := Image,
          'sentiment' := Sentiment,
          'source_country' := SourceCountry,
          'language' := Language,
          'id' := Id,
          'text' := Text,
          'title' := Title,
          'publish_date' := PublishDate,
          'url' := Url,
          'authors' := Authors
        }) ->
    #{ 'summary' => Summary,
       'image' => Image,
       'sentiment' => Sentiment,
       'source_country' => SourceCountry,
       'language' => Language,
       'id' => Id,
       'text' => Text,
       'title' => Title,
       'publish_date' => PublishDate,
       'url' => Url,
       'authors' => Authors
     }.
