-module(worldnewsapi_newspaper_front_pages_200_response_front_page).

-export([encode/1]).

-export_type([worldnewsapi_newspaper_front_pages_200_response_front_page/0]).

-type worldnewsapi_newspaper_front_pages_200_response_front_page() ::
    #{ 'name' => binary(),
       'date' => binary(),
       'country' => binary(),
       'image' => binary(),
       'language' => binary()
     }.

encode(#{ 'name' := Name,
          'date' := Date,
          'country' := Country,
          'image' := Image,
          'language' := Language
        }) ->
    #{ 'name' => Name,
       'date' => Date,
       'country' => Country,
       'image' => Image,
       'language' => Language
     }.
