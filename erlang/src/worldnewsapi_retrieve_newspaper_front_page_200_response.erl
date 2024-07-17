-module(worldnewsapi_retrieve_newspaper_front_page_200_response).

-export([encode/1]).

-export_type([worldnewsapi_retrieve_newspaper_front_page_200_response/0]).

-type worldnewsapi_retrieve_newspaper_front_page_200_response() ::
    #{ 'front_page' => worldnewsapi_retrieve_newspaper_front_page_200_response_front_page:worldnewsapi_retrieve_newspaper_front_page_200_response_front_page()
     }.

encode(#{ 'front_page' := FrontPage
        }) ->
    #{ 'front_page' => FrontPage
     }.
