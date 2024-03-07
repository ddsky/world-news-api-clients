-module(worldnewsapi_news_api).

-export([extract_news/3, extract_news/4,
         extract_news_links/3, extract_news_links/4,
         geo_coordinates/2, geo_coordinates/3,
         news_website_to_rss_feed/3, news_website_to_rss_feed/4,
         search_news/1, search_news/2]).

-define(BASE_URL, <<"">>).

%% @doc Extract News
%% Extract a news entry from a news site.
-spec extract_news(ctx:ctx(), binary(), boolean()) -> {ok, worldnewsapi_extract_news_response:worldnewsapi_extract_news_response(), worldnewsapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), worldnewsapi_utils:response_info()}.
extract_news(Ctx, Url, Analyze) ->
    extract_news(Ctx, Url, Analyze, #{}).

-spec extract_news(ctx:ctx(), binary(), boolean(), maps:map()) -> {ok, worldnewsapi_extract_news_response:worldnewsapi_extract_news_response(), worldnewsapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), worldnewsapi_utils:response_info()}.
extract_news(Ctx, Url, Analyze, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(worldnewsapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/extract-news"],
    QS = lists:flatten([{<<"url">>, Url}, {<<"analyze">>, Analyze}])++worldnewsapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = worldnewsapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    worldnewsapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Extract News Links
%% Extract a news links from a news website. 
-spec extract_news_links(ctx:ctx(), binary(), binary()) -> {ok, worldnewsapi_extract_links_response:worldnewsapi_extract_links_response(), worldnewsapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), worldnewsapi_utils:response_info()}.
extract_news_links(Ctx, Url, ApiKey) ->
    extract_news_links(Ctx, Url, ApiKey, #{}).

-spec extract_news_links(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, worldnewsapi_extract_links_response:worldnewsapi_extract_links_response(), worldnewsapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), worldnewsapi_utils:response_info()}.
extract_news_links(Ctx, Url, ApiKey, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(worldnewsapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/extract-news-links"],
    QS = lists:flatten([{<<"url">>, Url}, {<<"api-key">>, ApiKey}])++worldnewsapi_utils:optional_params(['prefix', 'sub-domain'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = worldnewsapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    worldnewsapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Geo Coordinates
%% Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country.
-spec geo_coordinates(ctx:ctx(), binary()) -> {ok, worldnewsapi_geo_coordinates_response:worldnewsapi_geo_coordinates_response(), worldnewsapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), worldnewsapi_utils:response_info()}.
geo_coordinates(Ctx, Location) ->
    geo_coordinates(Ctx, Location, #{}).

-spec geo_coordinates(ctx:ctx(), binary(), maps:map()) -> {ok, worldnewsapi_geo_coordinates_response:worldnewsapi_geo_coordinates_response(), worldnewsapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), worldnewsapi_utils:response_info()}.
geo_coordinates(Ctx, Location, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(worldnewsapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/geo-coordinates"],
    QS = lists:flatten([{<<"location">>, Location}])++worldnewsapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = worldnewsapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    worldnewsapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc News Website to RSS Feed
%% Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page. 
-spec news_website_to_rss_feed(ctx:ctx(), binary(), binary()) -> {ok, maps:map(), worldnewsapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), worldnewsapi_utils:response_info()}.
news_website_to_rss_feed(Ctx, Url, ApiKey) ->
    news_website_to_rss_feed(Ctx, Url, ApiKey, #{}).

-spec news_website_to_rss_feed(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, maps:map(), worldnewsapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), worldnewsapi_utils:response_info()}.
news_website_to_rss_feed(Ctx, Url, ApiKey, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(worldnewsapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/feed.rss"],
    QS = lists:flatten([{<<"url">>, Url}, {<<"api-key">>, ApiKey}])++worldnewsapi_utils:optional_params(['extract-news'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = worldnewsapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    worldnewsapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search News
%% Search for news.
-spec search_news(ctx:ctx()) -> {ok, worldnewsapi_search_news_response:worldnewsapi_search_news_response(), worldnewsapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), worldnewsapi_utils:response_info()}.
search_news(Ctx) ->
    search_news(Ctx, #{}).

-spec search_news(ctx:ctx(), maps:map()) -> {ok, worldnewsapi_search_news_response:worldnewsapi_search_news_response(), worldnewsapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), worldnewsapi_utils:response_info()}.
search_news(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(worldnewsapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/search-news"],
    QS = lists:flatten([])++worldnewsapi_utils:optional_params(['text', 'source-countries', 'language', 'min-sentiment', 'max-sentiment', 'earliest-publish-date', 'latest-publish-date', 'news-sources', 'authors', 'entities', 'location-filter', 'offset', 'number', 'sort', 'sort-direction'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = worldnewsapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    worldnewsapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


