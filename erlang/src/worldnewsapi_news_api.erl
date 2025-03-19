-module(worldnewsapi_news_api).

-export([extract_news/2, extract_news/3,
         extract_news_links/2, extract_news_links/3,
         get_geo_coordinates/2, get_geo_coordinates/3,
         news_website_to_rss_feed/2, news_website_to_rss_feed/3,
         retrieve_news_articles_by_ids/2, retrieve_news_articles_by_ids/3,
         retrieve_newspaper_front_page/1, retrieve_newspaper_front_page/2,
         search_news/1, search_news/2,
         search_news_sources/2, search_news_sources/3,
         top_news/3, top_news/4]).

-define(BASE_URL, <<"">>).

%% @doc Extract News
%% Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, images, videos, publish date, authors, language, source country, and sentiment of the news article.
-spec extract_news(ctx:ctx(), binary()) -> {ok, worldnewsapi_extract_news_200_response:worldnewsapi_extract_news_200_response(), worldnewsapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), worldnewsapi_utils:response_info()}.
extract_news(Ctx, Url) ->
    extract_news(Ctx, Url, #{}).

-spec extract_news(ctx:ctx(), binary(), maps:map()) -> {ok, worldnewsapi_extract_news_200_response:worldnewsapi_extract_news_200_response(), worldnewsapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), worldnewsapi_utils:response_info()}.
extract_news(Ctx, Url, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(worldnewsapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/extract-news"],
    QS = lists:flatten([{<<"url">>, Url}])++worldnewsapi_utils:optional_params(['analyze'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = worldnewsapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    worldnewsapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Extract News Links
%% Extract news links from a news website.
-spec extract_news_links(ctx:ctx(), binary()) -> {ok, worldnewsapi_extract_news_links_200_response:worldnewsapi_extract_news_links_200_response(), worldnewsapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), worldnewsapi_utils:response_info()}.
extract_news_links(Ctx, Url) ->
    extract_news_links(Ctx, Url, #{}).

-spec extract_news_links(ctx:ctx(), binary(), maps:map()) -> {ok, worldnewsapi_extract_news_links_200_response:worldnewsapi_extract_news_links_200_response(), worldnewsapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), worldnewsapi_utils:response_info()}.
extract_news_links(Ctx, Url, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(worldnewsapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/extract-news-links"],
    QS = lists:flatten([{<<"url">>, Url}])++worldnewsapi_utils:optional_params(['analyze'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = worldnewsapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    worldnewsapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Geo Coordinates
%% Retrieve the latitude and longitude of a location name. Given this information you can fill the location-filter parameter in the news search endpoint.
-spec get_geo_coordinates(ctx:ctx(), binary()) -> {ok, worldnewsapi_get_geo_coordinates_200_response:worldnewsapi_get_geo_coordinates_200_response(), worldnewsapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), worldnewsapi_utils:response_info()}.
get_geo_coordinates(Ctx, Location) ->
    get_geo_coordinates(Ctx, Location, #{}).

-spec get_geo_coordinates(ctx:ctx(), binary(), maps:map()) -> {ok, worldnewsapi_get_geo_coordinates_200_response:worldnewsapi_get_geo_coordinates_200_response(), worldnewsapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), worldnewsapi_utils:response_info()}.
get_geo_coordinates(Ctx, Location, Optional) ->
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
-spec news_website_to_rss_feed(ctx:ctx(), binary()) -> {ok, maps:map(), worldnewsapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), worldnewsapi_utils:response_info()}.
news_website_to_rss_feed(Ctx, Url) ->
    news_website_to_rss_feed(Ctx, Url, #{}).

-spec news_website_to_rss_feed(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), worldnewsapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), worldnewsapi_utils:response_info()}.
news_website_to_rss_feed(Ctx, Url, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(worldnewsapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/feed.rss"],
    QS = lists:flatten([{<<"url">>, Url}])++worldnewsapi_utils:optional_params(['extract-news'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = worldnewsapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    worldnewsapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Retrieve News Articles by Ids
%% Retrieve information about one or more news articles by their ids. The ids can be retrieved from the search news or top news APIs.
-spec retrieve_news_articles_by_ids(ctx:ctx(), binary()) -> {ok, worldnewsapi_retrieve_news_articles_by_ids_200_response:worldnewsapi_retrieve_news_articles_by_ids_200_response(), worldnewsapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), worldnewsapi_utils:response_info()}.
retrieve_news_articles_by_ids(Ctx, Ids) ->
    retrieve_news_articles_by_ids(Ctx, Ids, #{}).

-spec retrieve_news_articles_by_ids(ctx:ctx(), binary(), maps:map()) -> {ok, worldnewsapi_retrieve_news_articles_by_ids_200_response:worldnewsapi_retrieve_news_articles_by_ids_200_response(), worldnewsapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), worldnewsapi_utils:response_info()}.
retrieve_news_articles_by_ids(Ctx, Ids, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(worldnewsapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/retrieve-news"],
    QS = lists:flatten([{<<"ids">>, Ids}])++worldnewsapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = worldnewsapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    worldnewsapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Retrieve Newspaper Front Page
%% Get the front pages of newspapers from around the world. The API provides images of the front pages of newspapers from different countries. Here's an example of some of today's newspapers:
-spec retrieve_newspaper_front_page(ctx:ctx()) -> {ok, worldnewsapi_retrieve_newspaper_front_page_200_response:worldnewsapi_retrieve_newspaper_front_page_200_response(), worldnewsapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), worldnewsapi_utils:response_info()}.
retrieve_newspaper_front_page(Ctx) ->
    retrieve_newspaper_front_page(Ctx, #{}).

-spec retrieve_newspaper_front_page(ctx:ctx(), maps:map()) -> {ok, worldnewsapi_retrieve_newspaper_front_page_200_response:worldnewsapi_retrieve_newspaper_front_page_200_response(), worldnewsapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), worldnewsapi_utils:response_info()}.
retrieve_newspaper_front_page(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(worldnewsapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/retrieve-front-page"],
    QS = lists:flatten([])++worldnewsapi_utils:optional_params(['source-country', 'source-name', 'date'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = worldnewsapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    worldnewsapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search News
%% Search and filter news by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. Each returned article includes the title, the full text of the article, a summary, image URL, video URL, the publish date, the authors, the category, the language, the source country, and the sentiment of the article. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
-spec search_news(ctx:ctx()) -> {ok, worldnewsapi_search_news_200_response:worldnewsapi_search_news_200_response(), worldnewsapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), worldnewsapi_utils:response_info()}.
search_news(Ctx) ->
    search_news(Ctx, #{}).

-spec search_news(ctx:ctx(), maps:map()) -> {ok, worldnewsapi_search_news_200_response:worldnewsapi_search_news_200_response(), worldnewsapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), worldnewsapi_utils:response_info()}.
search_news(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(worldnewsapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/search-news"],
    QS = lists:flatten([])++worldnewsapi_utils:optional_params(['text', 'text-match-indexes', 'source-country', 'language', 'min-sentiment', 'max-sentiment', 'earliest-publish-date', 'latest-publish-date', 'news-sources', 'authors', 'categories', 'entities', 'location-filter', 'sort', 'sort-direction', 'offset', 'number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = worldnewsapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    worldnewsapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search News Sources
%% Search whether a news source is being monitored by the World News API. This API is useful if you want to know if a specific news source is available in the API.
-spec search_news_sources(ctx:ctx(), binary()) -> {ok, worldnewsapi_search_news_sources_200_response:worldnewsapi_search_news_sources_200_response(), worldnewsapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), worldnewsapi_utils:response_info()}.
search_news_sources(Ctx, Name) ->
    search_news_sources(Ctx, Name, #{}).

-spec search_news_sources(ctx:ctx(), binary(), maps:map()) -> {ok, worldnewsapi_search_news_sources_200_response:worldnewsapi_search_news_sources_200_response(), worldnewsapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), worldnewsapi_utils:response_info()}.
search_news_sources(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(worldnewsapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/search-news-sources"],
    QS = lists:flatten([{<<"name">>, Name}])++worldnewsapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = worldnewsapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    worldnewsapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Top News
%% Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.
-spec top_news(ctx:ctx(), binary(), binary()) -> {ok, worldnewsapi_top_news_200_response:worldnewsapi_top_news_200_response(), worldnewsapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), worldnewsapi_utils:response_info()}.
top_news(Ctx, SourceCountry, Language) ->
    top_news(Ctx, SourceCountry, Language, #{}).

-spec top_news(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, worldnewsapi_top_news_200_response:worldnewsapi_top_news_200_response(), worldnewsapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), worldnewsapi_utils:response_info()}.
top_news(Ctx, SourceCountry, Language, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(worldnewsapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/top-news"],
    QS = lists:flatten([{<<"source-country">>, SourceCountry}, {<<"language">>, Language}])++worldnewsapi_utils:optional_params(['date', 'headlines-only'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = worldnewsapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    worldnewsapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


