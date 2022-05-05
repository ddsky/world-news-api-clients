-module(openapi_inline_response_200_news).

-export([encode/1]).

-export_type([openapi_inline_response_200_news/0]).

-type openapi_inline_response_200_news() ::
    #{ 'id' => integer(),
       'title' => binary(),
       'text' => binary(),
       'summary' => binary(),
       'url' => binary(),
       'image' => binary(),
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
       'author' => Author,
       'language' => Language,
       'source_country' => SourceCountry,
       'sentiment' => Sentiment
     }.
