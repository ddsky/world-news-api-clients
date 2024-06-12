-module(worldnewsapi_top_news_200_response_top_news_inner_news_inner).

-export([encode/1]).

-export_type([worldnewsapi_top_news_200_response_top_news_inner_news_inner/0]).

-type worldnewsapi_top_news_200_response_top_news_inner_news_inner() ::
    #{ 'summary' => binary(),
       'image' => binary(),
       'author' => binary(),
       'id' => integer(),
       'text' => binary(),
       'title' => binary(),
       'publish_date' => binary(),
       'url' => binary(),
       'authors' => list()
     }.

encode(#{ 'summary' := Summary,
          'image' := Image,
          'author' := Author,
          'id' := Id,
          'text' := Text,
          'title' := Title,
          'publish_date' := PublishDate,
          'url' := Url,
          'authors' := Authors
        }) ->
    #{ 'summary' => Summary,
       'image' => Image,
       'author' => Author,
       'id' => Id,
       'text' => Text,
       'title' => Title,
       'publish_date' => PublishDate,
       'url' => Url,
       'authors' => Authors
     }.
