# WWW::OpenAPIClient::NewsApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::NewsApi;
```

All URIs are relative to *https://api.worldnewsapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**extract_news**](NewsApi.md#extract_news) | **GET** /extract-news | Extract News
[**geo_coordinates**](NewsApi.md#geo_coordinates) | **GET** /geo-coordinates | Get Geo Coordinates
[**search_news**](NewsApi.md#search_news) | **GET** /search-news | Search News


# **extract_news**
> InlineResponse2001 extract_news(url => $url, analyze => $analyze)

Extract News

Extract a news entry from a news site.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::NewsApi;
my $api_instance = WWW::OpenAPIClient::NewsApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $url = https://www.bbc.com/news/world-us-canada-59340789; # string | The url of the news.
my $analyze = true; # boolean | Whether to analyze the news (extract entities etc.)

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
 **analyze** | **boolean**| Whether to analyze the news (extract entities etc.) | [default to false]

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **geo_coordinates**
> InlineResponse2002 geo_coordinates(location => $location)

Get Geo Coordinates

Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::NewsApi;
my $api_instance = WWW::OpenAPIClient::NewsApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $location = Tokyo, Japan; # string | The address or name of the location, e.g. Tokyo, Japan.

eval {
    my $result = $api_instance->geo_coordinates(location => $location);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NewsApi->geo_coordinates: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location** | **string**| The address or name of the location, e.g. Tokyo, Japan. | 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_news**
> InlineResponse200 search_news(text => $text, source_countries => $source_countries, language => $language, min_sentiment => $min_sentiment, max_sentiment => $max_sentiment, earliest_publish_date => $earliest_publish_date, latest_publish_date => $latest_publish_date, news_sources => $news_sources, authors => $authors, entities => $entities, location_filter => $location_filter, offset => $offset, number => $number, sort => $sort, sort_direction => $sort_direction)

Search News

Search for news.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::NewsApi;
my $api_instance = WWW::OpenAPIClient::NewsApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $text = hurricane; # string | The text to match in the news content.
my $source_countries = gb,us; # string | A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us.
my $language = en; # string | The ISO 6391 language code of the news, e.g. \"en\" for English.
my $min_sentiment = -0.8; # double | The minimal sentiment of the news in range [-1,1].
my $max_sentiment = 0.8; # double | The maximal sentiment of the news in range [-1,1].
my $earliest_publish_date = 2022-04-22 16:12:35; # string | The news must have been published after this date.
my $latest_publish_date = 2022-05-23 24:16:27; # string | The news must have been published before this date.
my $news_sources = https://www.bbc.co.uk; # string | A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk
my $authors = John Doe; # string | A comma-separated list of author names. Only news from any of the given authors will be returned.
my $entities = ORG:Tesla; # string | Filter news by entities, e.g. ORG:Tesla.
my $location_filter = 51.050407,13.737262,100; # string | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\", e.g. 51.050407, 13.737262, 100
my $offset = 10; # int | The number of news to skip in range [0,1000]
my $number = 1; # int | The number of news to return in range [1,100]
my $sort = publish-time; # string | The sorting criteria.
my $sort_direction = desc; # string | Whether to sort ascending or descending.

eval {
    my $result = $api_instance->search_news(text => $text, source_countries => $source_countries, language => $language, min_sentiment => $min_sentiment, max_sentiment => $max_sentiment, earliest_publish_date => $earliest_publish_date, latest_publish_date => $latest_publish_date, news_sources => $news_sources, authors => $authors, entities => $entities, location_filter => $location_filter, offset => $offset, number => $number, sort => $sort, sort_direction => $sort_direction);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NewsApi->search_news: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string**| The text to match in the news content. | [optional] 
 **source_countries** | **string**| A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us. | [optional] 
 **language** | **string**| The ISO 6391 language code of the news, e.g. \&quot;en\&quot; for English. | [optional] 
 **min_sentiment** | **double**| The minimal sentiment of the news in range [-1,1]. | [optional] 
 **max_sentiment** | **double**| The maximal sentiment of the news in range [-1,1]. | [optional] 
 **earliest_publish_date** | **string**| The news must have been published after this date. | [optional] 
 **latest_publish_date** | **string**| The news must have been published before this date. | [optional] 
 **news_sources** | **string**| A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk | [optional] 
 **authors** | **string**| A comma-separated list of author names. Only news from any of the given authors will be returned. | [optional] 
 **entities** | **string**| Filter news by entities, e.g. ORG:Tesla. | [optional] 
 **location_filter** | **string**| Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;, e.g. 51.050407, 13.737262, 100 | [optional] 
 **offset** | **int**| The number of news to skip in range [0,1000] | [optional] 
 **number** | **int**| The number of news to return in range [1,100] | [optional] 
 **sort** | **string**| The sorting criteria. | [optional] 
 **sort_direction** | **string**| Whether to sort ascending or descending. | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

