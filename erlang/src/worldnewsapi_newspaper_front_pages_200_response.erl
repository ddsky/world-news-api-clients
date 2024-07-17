-module(worldnewsapi_newspaper_front_pages_200_response).

-export([encode/1]).

-export_type([worldnewsapi_newspaper_front_pages_200_response/0]).

-type worldnewsapi_newspaper_front_pages_200_response() ::
    #{ 'front_page' => worldnewsapi_newspaper_front_pages_200_response_front_page:worldnewsapi_newspaper_front_pages_200_response_front_page()
     }.

encode(#{ 'front_page' := FrontPage
        }) ->
    #{ 'front_page' => FrontPage
     }.
