-module(openapi_inline_response_200_1).

-export([encode/1]).

-export_type([openapi_inline_response_200_1/0]).

-type openapi_inline_response_200_1() ::
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
