-module(worldnewsapi_retrieve_news_articles_by_ids_200_response_news_inner).

-export([encode/1]).

-export_type([worldnewsapi_retrieve_news_articles_by_ids_200_response_news_inner/0]).

-type worldnewsapi_retrieve_news_articles_by_ids_200_response_news_inner() ::
    #{ 'summary' => binary(),
       'image' => binary(),
       'sentiment' => integer(),
       'catgory' => binary(),
       'language' => binary(),
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
          'catgory' := Catgory,
          'language' := Language,
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
       'catgory' => Catgory,
       'language' => Language,
       'title' => Title,
       'url' => Url,
       'source_country' => SourceCountry,
       'id' => Id,
       'text' => Text,
       'publish_date' => PublishDate,
       'authors' => Authors
     }.
