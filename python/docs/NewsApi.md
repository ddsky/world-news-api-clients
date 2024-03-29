# worldnewsapi.NewsApi

All URIs are relative to *https://api.worldnewsapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**extract_news**](NewsApi.md#extract_news) | **GET** /extract-news | Extract News
[**extract_news_links**](NewsApi.md#extract_news_links) | **GET** /extract-news-links | Extract News Links
[**geo_coordinates**](NewsApi.md#geo_coordinates) | **GET** /geo-coordinates | Get Geo Coordinates
[**news_website_to_rss_feed**](NewsApi.md#news_website_to_rss_feed) | **GET** /feed.rss | News Website to RSS Feed
[**search_news**](NewsApi.md#search_news) | **GET** /search-news | Search News


# **extract_news**
> ExtractNewsResponse extract_news(url, analyze)

Extract News

Extract a news entry from a news site.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import worldnewsapi
from worldnewsapi.models.extract_news_response import ExtractNewsResponse
from worldnewsapi.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.worldnewsapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = worldnewsapi.Configuration(
    host = "https://api.worldnewsapi.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with worldnewsapi.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = worldnewsapi.NewsApi(api_client)
    url = 'https://www.bbc.com/news/world-us-canada-59340789' # str | The url of the news.
    analyze = False # bool | Whether to analyze the news (extract entities etc.) (default to False)

    try:
        # Extract News
        api_response = api_instance.extract_news(url, analyze)
        print("The response of NewsApi->extract_news:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NewsApi->extract_news: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **str**| The url of the news. | 
 **analyze** | **bool**| Whether to analyze the news (extract entities etc.) | [default to False]

### Return type

[**ExtractNewsResponse**](ExtractNewsResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Extracted news. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **extract_news_links**
> ExtractLinksResponse extract_news_links(url, api_key, prefix=prefix, sub_domain=sub_domain)

Extract News Links

Extract a news links from a news website. 

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import worldnewsapi
from worldnewsapi.models.extract_links_response import ExtractLinksResponse
from worldnewsapi.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.worldnewsapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = worldnewsapi.Configuration(
    host = "https://api.worldnewsapi.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with worldnewsapi.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = worldnewsapi.NewsApi(api_client)
    url = 'https://nytimes.com' # str | The url from which links should be extracted.
    api_key = 'abcd1234' # str | Your API key.
    prefix = '' # str | The prefix the news links must start with. (optional)
    sub_domain = true # bool | Whether to include links to news on sub-domains. (optional)

    try:
        # Extract News Links
        api_response = api_instance.extract_news_links(url, api_key, prefix=prefix, sub_domain=sub_domain)
        print("The response of NewsApi->extract_news_links:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NewsApi->extract_news_links: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **str**| The url from which links should be extracted. | 
 **api_key** | **str**| Your API key. | 
 **prefix** | **str**| The prefix the news links must start with. | [optional] 
 **sub_domain** | **bool**| Whether to include links to news on sub-domains. | [optional] 

### Return type

[**ExtractLinksResponse**](ExtractLinksResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **geo_coordinates**
> GeoCoordinatesResponse geo_coordinates(location)

Get Geo Coordinates

Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import worldnewsapi
from worldnewsapi.models.geo_coordinates_response import GeoCoordinatesResponse
from worldnewsapi.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.worldnewsapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = worldnewsapi.Configuration(
    host = "https://api.worldnewsapi.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with worldnewsapi.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = worldnewsapi.NewsApi(api_client)
    location = 'Tokyo, Japan' # str | The address or name of the location, e.g. Tokyo, Japan.

    try:
        # Get Geo Coordinates
        api_response = api_instance.geo_coordinates(location)
        print("The response of NewsApi->geo_coordinates:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NewsApi->geo_coordinates: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location** | **str**| The address or name of the location, e.g. Tokyo, Japan. | 

### Return type

[**GeoCoordinatesResponse**](GeoCoordinatesResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The coordinates of the location. |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **news_website_to_rss_feed**
> object news_website_to_rss_feed(url, api_key, extract_news=extract_news)

News Website to RSS Feed

Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page. 

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import worldnewsapi
from worldnewsapi.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.worldnewsapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = worldnewsapi.Configuration(
    host = "https://api.worldnewsapi.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with worldnewsapi.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = worldnewsapi.NewsApi(api_client)
    url = 'https://nytimes.com' # str | The url from which links should be extracted.
    api_key = 'abcd1234' # str | Your API key.
    extract_news = false # bool | Whether extract news and add information such as description, publish date, and image to each item. (optional)

    try:
        # News Website to RSS Feed
        api_response = api_instance.news_website_to_rss_feed(url, api_key, extract_news=extract_news)
        print("The response of NewsApi->news_website_to_rss_feed:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NewsApi->news_website_to_rss_feed: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **str**| The url from which links should be extracted. | 
 **api_key** | **str**| Your API key. | 
 **extract_news** | **bool**| Whether extract news and add information such as description, publish date, and image to each item. | [optional] 

### Return type

**object**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_news**
> SearchNewsResponse search_news(text=text, source_countries=source_countries, language=language, min_sentiment=min_sentiment, max_sentiment=max_sentiment, earliest_publish_date=earliest_publish_date, latest_publish_date=latest_publish_date, news_sources=news_sources, authors=authors, entities=entities, location_filter=location_filter, offset=offset, number=number, sort=sort, sort_direction=sort_direction)

Search News

Search for news.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import worldnewsapi
from worldnewsapi.models.search_news_response import SearchNewsResponse
from worldnewsapi.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.worldnewsapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = worldnewsapi.Configuration(
    host = "https://api.worldnewsapi.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with worldnewsapi.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = worldnewsapi.NewsApi(api_client)
    text = 'hurricane' # str | The text to match in the news content. (optional)
    source_countries = 'us,uk' # str | A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us. (optional)
    language = 'en' # str | The ISO 6391 language code of the news, e.g. \"en\" for English. (optional)
    min_sentiment = -0.8 # float | The minimal sentiment of the news in range [-1,1]. (optional)
    max_sentiment = 0.8 # float | The maximal sentiment of the news in range [-1,1]. (optional)
    earliest_publish_date = '2022-04-22 16:12:35' # str | The news must have been published after this date. (optional)
    latest_publish_date = '2022-05-23 24:16:27' # str | The news must have been published before this date. (optional)
    news_sources = 'https://www.bbc.co.uk' # str | A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk (optional)
    authors = 'John Doe' # str | A comma-separated list of author names. Only news from any of the given authors will be returned. (optional)
    entities = 'ORG:Tesla' # str | Filter news by entities, e.g. ORG:Tesla. (optional)
    location_filter = '51.050407,13.737262,100' # str | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\", e.g. 51.050407, 13.737262, 100 (optional)
    offset = 10 # int | The number of news to skip in range [0,1000] (optional)
    number = 1 # int | The number of news to return in range [1,100] (optional)
    sort = 'publish-time' # str | The sorting criteria. (optional)
    sort_direction = 'desc' # str | Whether to sort ascending or descending. (optional)

    try:
        # Search News
        api_response = api_instance.search_news(text=text, source_countries=source_countries, language=language, min_sentiment=min_sentiment, max_sentiment=max_sentiment, earliest_publish_date=earliest_publish_date, latest_publish_date=latest_publish_date, news_sources=news_sources, authors=authors, entities=entities, location_filter=location_filter, offset=offset, number=number, sort=sort, sort_direction=sort_direction)
        print("The response of NewsApi->search_news:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NewsApi->search_news: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **str**| The text to match in the news content. | [optional] 
 **source_countries** | **str**| A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us. | [optional] 
 **language** | **str**| The ISO 6391 language code of the news, e.g. \&quot;en\&quot; for English. | [optional] 
 **min_sentiment** | **float**| The minimal sentiment of the news in range [-1,1]. | [optional] 
 **max_sentiment** | **float**| The maximal sentiment of the news in range [-1,1]. | [optional] 
 **earliest_publish_date** | **str**| The news must have been published after this date. | [optional] 
 **latest_publish_date** | **str**| The news must have been published before this date. | [optional] 
 **news_sources** | **str**| A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk | [optional] 
 **authors** | **str**| A comma-separated list of author names. Only news from any of the given authors will be returned. | [optional] 
 **entities** | **str**| Filter news by entities, e.g. ORG:Tesla. | [optional] 
 **location_filter** | **str**| Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;, e.g. 51.050407, 13.737262, 100 | [optional] 
 **offset** | **int**| The number of news to skip in range [0,1000] | [optional] 
 **number** | **int**| The number of news to return in range [1,100] | [optional] 
 **sort** | **str**| The sorting criteria. | [optional] 
 **sort_direction** | **str**| Whether to sort ascending or descending. | [optional] 

### Return type

[**SearchNewsResponse**](SearchNewsResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List of news. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

