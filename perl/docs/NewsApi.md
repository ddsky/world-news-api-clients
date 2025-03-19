# WWW::OpenAPIClient::NewsApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::NewsApi;
```

All URIs are relative to *https://api.worldnewsapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**extract_news**](NewsApi.md#extract_news) | **GET** /extract-news | Extract News
[**extract_news_links**](NewsApi.md#extract_news_links) | **GET** /extract-news-links | Extract News Links
[**get_geo_coordinates**](NewsApi.md#get_geo_coordinates) | **GET** /geo-coordinates | Get Geo Coordinates
[**news_website_to_rss_feed**](NewsApi.md#news_website_to_rss_feed) | **GET** /feed.rss | News Website to RSS Feed
[**retrieve_news_articles_by_ids**](NewsApi.md#retrieve_news_articles_by_ids) | **GET** /retrieve-news | Retrieve News Articles by Ids
[**retrieve_newspaper_front_page**](NewsApi.md#retrieve_newspaper_front_page) | **GET** /retrieve-front-page | Retrieve Newspaper Front Page
[**search_news**](NewsApi.md#search_news) | **GET** /search-news | Search News
[**search_news_sources**](NewsApi.md#search_news_sources) | **GET** /search-news-sources | Search News Sources
[**top_news**](NewsApi.md#top_news) | **GET** /top-news | Top News


# **extract_news**
> ExtractNews200Response extract_news(url => $url, analyze => $analyze)

Extract News

Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, images, videos, publish date, authors, language, source country, and sentiment of the news article.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::NewsApi;
my $api_instance = WWW::OpenAPIClient::NewsApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $url = https://www.bbc.com/news/world-us-canada-59340789; # string | The url of the news.
my $analyze = true; # boolean | Whether to analyze the extracted news (extract entities, detect sentiment etc.)

eval {
    my $result = $api_instance->extract_news(url => $url, analyze => $analyze);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NewsApi->extract_news: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string**| The url of the news. | 
 **analyze** | **boolean**| Whether to analyze the extracted news (extract entities, detect sentiment etc.) | [optional] 

### Return type

[**ExtractNews200Response**](ExtractNews200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **extract_news_links**
> ExtractNewsLinks200Response extract_news_links(url => $url, analyze => $analyze)

Extract News Links

Extract news links from a news website.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::NewsApi;
my $api_instance = WWW::OpenAPIClient::NewsApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $url = https://www.bbc.com/news/world-us-canada-59340789; # string | The url of the news.
my $analyze = true; # boolean | Whether to analyze the extracted news (extract entities, detect sentiment etc.)

eval {
    my $result = $api_instance->extract_news_links(url => $url, analyze => $analyze);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NewsApi->extract_news_links: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string**| The url of the news. | 
 **analyze** | **boolean**| Whether to analyze the extracted news (extract entities, detect sentiment etc.) | [optional] 

### Return type

[**ExtractNewsLinks200Response**](ExtractNewsLinks200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_geo_coordinates**
> GetGeoCoordinates200Response get_geo_coordinates(location => $location)

Get Geo Coordinates

Retrieve the latitude and longitude of a location name. Given this information you can fill the location-filter parameter in the news search endpoint.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::NewsApi;
my $api_instance = WWW::OpenAPIClient::NewsApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $location = Tokyo, Japan; # string | The address or name of the location.

eval {
    my $result = $api_instance->get_geo_coordinates(location => $location);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NewsApi->get_geo_coordinates: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location** | **string**| The address or name of the location. | 

### Return type

[**GetGeoCoordinates200Response**](GetGeoCoordinates200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **news_website_to_rss_feed**
> object news_website_to_rss_feed(url => $url, extract_news => $extract_news)

News Website to RSS Feed

Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::NewsApi;
my $api_instance = WWW::OpenAPIClient::NewsApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $url = https://www.bbc.com/; # string | The url of the site for which an RSS feed should be created.
my $extract_news = true; # boolean | Whether to extract the news for each link instead of just returning the link.

eval {
    my $result = $api_instance->news_website_to_rss_feed(url => $url, extract_news => $extract_news);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NewsApi->news_website_to_rss_feed: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string**| The url of the site for which an RSS feed should be created. | 
 **extract_news** | **boolean**| Whether to extract the news for each link instead of just returning the link. | [optional] 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieve_news_articles_by_ids**
> RetrieveNewsArticlesByIds200Response retrieve_news_articles_by_ids(ids => $ids)

Retrieve News Articles by Ids

Retrieve information about one or more news articles by their ids. The ids can be retrieved from the search news or top news APIs.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::NewsApi;
my $api_instance = WWW::OpenAPIClient::NewsApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $ids = 2352,2354; # string | A comma separated list of news ids.

eval {
    my $result = $api_instance->retrieve_news_articles_by_ids(ids => $ids);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NewsApi->retrieve_news_articles_by_ids: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **string**| A comma separated list of news ids. | 

### Return type

[**RetrieveNewsArticlesByIds200Response**](RetrieveNewsArticlesByIds200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieve_newspaper_front_page**
> RetrieveNewspaperFrontPage200Response retrieve_newspaper_front_page(source_country => $source_country, source_name => $source_name, date => $date)

Retrieve Newspaper Front Page

Get the front pages of newspapers from around the world. The API provides images of the front pages of newspapers from different countries. Here's an example of some of today's newspapers:

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::NewsApi;
my $api_instance = WWW::OpenAPIClient::NewsApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $source_country = au; # string | The ISO 3166 country code of the newspaper publication.
my $source_name = herald-sun; # string | The identifier of the publication see attached list.
my $date = 2024-07-09; # string | The date for which the front page should be retrieved. You can also go into the past, the earliest date is 2024-07-09.

eval {
    my $result = $api_instance->retrieve_newspaper_front_page(source_country => $source_country, source_name => $source_name, date => $date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NewsApi->retrieve_newspaper_front_page: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source_country** | **string**| The ISO 3166 country code of the newspaper publication. | [optional] 
 **source_name** | **string**| The identifier of the publication see attached list. | [optional] 
 **date** | **string**| The date for which the front page should be retrieved. You can also go into the past, the earliest date is 2024-07-09. | [optional] 

### Return type

[**RetrieveNewspaperFrontPage200Response**](RetrieveNewspaperFrontPage200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_news**
> SearchNews200Response search_news(text => $text, text_match_indexes => $text_match_indexes, source_country => $source_country, language => $language, min_sentiment => $min_sentiment, max_sentiment => $max_sentiment, earliest_publish_date => $earliest_publish_date, latest_publish_date => $latest_publish_date, news_sources => $news_sources, authors => $authors, categories => $categories, entities => $entities, location_filter => $location_filter, sort => $sort, sort_direction => $sort_direction, offset => $offset, number => $number)

Search News

Search and filter news by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. Each returned article includes the title, the full text of the article, a summary, image URL, video URL, the publish date, the authors, the category, the language, the source country, and the sentiment of the article. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::NewsApi;
my $api_instance = WWW::OpenAPIClient::NewsApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $text = tesla; # string | The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford. You can also exclude terms by putting a minus sign (-) in front of the term, e.g. tesla -ford. For exact matches just put your term in quotes, e.g. \"elon musk\".
my $text_match_indexes = title,content; # string | If a \"text\" is given to search for, you can specify where this text is searched for. Possible values are title, content, or both separated by a comma. By default, both title and content are searched.
my $source_country = us; # string | The ISO 3166 country code from which the news should originate.
my $language = en; # string | The ISO 6391 language code of the news.
my $min_sentiment = -0.8; # double | The minimal sentiment of the news in range [-1,1].
my $max_sentiment = 0.8; # double | The maximal sentiment of the news in range [-1,1].
my $earliest_publish_date = 2022-04-22 16:12:35; # string | The news must have been published after this date.
my $latest_publish_date = 2022-04-22 16:12:35; # string | The news must have been published before this date.
my $news_sources = https://www.bbc.co.uk; # string | A comma-separated list of news sources from which the news should originate.
my $authors = John Doe; # string | A comma-separated list of author names. Only news from any of the given authors will be returned.
my $categories = politics,sports; # string | A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other. Please note that the filter might leave out news, especially in non-English languages. If too few results are returned, use the text parameter instead.
my $entities = ORG:Tesla,PER:Elon Musk; # string | Filter news by entities (see semantic types).
my $location_filter = 51.050407, 13.737262, 20; # string | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\". Radius must be between 1 and 100 kilometers.
my $sort = publish-time; # string | The sorting criteria (publish-time).
my $sort_direction = ASC; # string | Whether to sort ascending or descending (ASC or DESC).
my $offset = 0; # int | The number of news to skip in range [0,100000]
my $number = 10; # int | The number of news to return in range [1,100]

eval {
    my $result = $api_instance->search_news(text => $text, text_match_indexes => $text_match_indexes, source_country => $source_country, language => $language, min_sentiment => $min_sentiment, max_sentiment => $max_sentiment, earliest_publish_date => $earliest_publish_date, latest_publish_date => $latest_publish_date, news_sources => $news_sources, authors => $authors, categories => $categories, entities => $entities, location_filter => $location_filter, sort => $sort, sort_direction => $sort_direction, offset => $offset, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NewsApi->search_news: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string**| The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford. You can also exclude terms by putting a minus sign (-) in front of the term, e.g. tesla -ford. For exact matches just put your term in quotes, e.g. \&quot;elon musk\&quot;. | [optional] 
 **text_match_indexes** | **string**| If a \&quot;text\&quot; is given to search for, you can specify where this text is searched for. Possible values are title, content, or both separated by a comma. By default, both title and content are searched. | [optional] 
 **source_country** | **string**| The ISO 3166 country code from which the news should originate. | [optional] 
 **language** | **string**| The ISO 6391 language code of the news. | [optional] 
 **min_sentiment** | **double**| The minimal sentiment of the news in range [-1,1]. | [optional] 
 **max_sentiment** | **double**| The maximal sentiment of the news in range [-1,1]. | [optional] 
 **earliest_publish_date** | **string**| The news must have been published after this date. | [optional] 
 **latest_publish_date** | **string**| The news must have been published before this date. | [optional] 
 **news_sources** | **string**| A comma-separated list of news sources from which the news should originate. | [optional] 
 **authors** | **string**| A comma-separated list of author names. Only news from any of the given authors will be returned. | [optional] 
 **categories** | **string**| A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other. Please note that the filter might leave out news, especially in non-English languages. If too few results are returned, use the text parameter instead. | [optional] 
 **entities** | **string**| Filter news by entities (see semantic types). | [optional] 
 **location_filter** | **string**| Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;. Radius must be between 1 and 100 kilometers. | [optional] 
 **sort** | **string**| The sorting criteria (publish-time). | [optional] 
 **sort_direction** | **string**| Whether to sort ascending or descending (ASC or DESC). | [optional] 
 **offset** | **int**| The number of news to skip in range [0,100000] | [optional] 
 **number** | **int**| The number of news to return in range [1,100] | [optional] 

### Return type

[**SearchNews200Response**](SearchNews200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_news_sources**
> SearchNewsSources200Response search_news_sources(name => $name)

Search News Sources

Search whether a news source is being monitored by the World News API. This API is useful if you want to know if a specific news source is available in the API.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::NewsApi;
my $api_instance = WWW::OpenAPIClient::NewsApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $name = bbc; # string | The (partial) name of the source.

eval {
    my $result = $api_instance->search_news_sources(name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NewsApi->search_news_sources: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The (partial) name of the source. | 

### Return type

[**SearchNewsSources200Response**](SearchNewsSources200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **top_news**
> TopNews200Response top_news(source_country => $source_country, language => $language, date => $date, headlines_only => $headlines_only)

Top News

Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::NewsApi;
my $api_instance = WWW::OpenAPIClient::NewsApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $source_country = us; # string | The ISO 3166 country code of the country for which top news should be retrieved.
my $language = en; # string | The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
my $date = 2024-05-30; # string | The date for which the top news should be retrieved. If no date is given, the current day is assumed.
my $headlines_only = false; # boolean | Whether to only return basic information such as id, title, and url of the news.

eval {
    my $result = $api_instance->top_news(source_country => $source_country, language => $language, date => $date, headlines_only => $headlines_only);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NewsApi->top_news: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source_country** | **string**| The ISO 3166 country code of the country for which top news should be retrieved. | 
 **language** | **string**| The ISO 6391 language code of the top news. The language must be one spoken in the source-country. | 
 **date** | **string**| The date for which the top news should be retrieved. If no date is given, the current day is assumed. | [optional] 
 **headlines_only** | **boolean**| Whether to only return basic information such as id, title, and url of the news. | [optional] 

### Return type

[**TopNews200Response**](TopNews200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

