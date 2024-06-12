-module(worldnewsapi_extract_news_200_response).

-export([encode/1]).

-export_type([worldnewsapi_extract_news_200_response/0]).

-type worldnewsapi_extract_news_200_response() ::
    #{ 'title' => binary(),
       'text' => binary(),
       'url' => binary(),
       'image' => binary(),
       'images' => list(),
       'video' => binary(),
       'videos' => list(),
       'publish_date' => binary(),
       'author' => binary(),
       'authors' => list(),
       'language' => binary()
     }.

encode(#{ 'title' := Title,
          'text' := Text,
          'url' := Url,
          'image' := Image,
          'images' := Images,
          'video' := Video,
          'videos' := Videos,
          'publish_date' := PublishDate,
          'author' := Author,
          'authors' := Authors,
          'language' := Language
        }) ->
    #{ 'title' => Title,
       'text' => Text,
       'url' => Url,
       'image' => Image,
       'images' => Images,
       'video' => Video,
       'videos' => Videos,
       'publish_date' => PublishDate,
       'author' => Author,
       'authors' => Authors,
       'language' => Language
     }.
