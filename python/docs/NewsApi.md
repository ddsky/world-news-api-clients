# worldnewsapi.NewsApi

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
> ExtractNews200Response extract_news(url, analyze=analyze)

Extract News

Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, images, videos, publish date, authors, language, source country, and sentiment of the news article.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import worldnewsapi
from worldnewsapi.models.extract_news200_response import ExtractNews200Response
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
    analyze = true # bool | Whether to analyze the extracted news (extract entities, detect sentiment etc.) (optional)

    try:
        # Extract News
        api_response = api_instance.extract_news(url, analyze=analyze)
        print("The response of NewsApi->extract_news:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NewsApi->extract_news: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **str**| The url of the news. | 
 **analyze** | **bool**| Whether to analyze the extracted news (extract entities, detect sentiment etc.) | [optional] 

### Return type

[**ExtractNews200Response**](ExtractNews200Response.md)

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
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **extract_news_links**
> ExtractNewsLinks200Response extract_news_links(url, analyze=analyze)

Extract News Links

Extract news links from a news website.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import worldnewsapi
from worldnewsapi.models.extract_news_links200_response import ExtractNewsLinks200Response
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
    analyze = true # bool | Whether to analyze the extracted news (extract entities, detect sentiment etc.) (optional)

    try:
        # Extract News Links
        api_response = api_instance.extract_news_links(url, analyze=analyze)
        print("The response of NewsApi->extract_news_links:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NewsApi->extract_news_links: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **str**| The url of the news. | 
 **analyze** | **bool**| Whether to analyze the extracted news (extract entities, detect sentiment etc.) | [optional] 

### Return type

[**ExtractNewsLinks200Response**](ExtractNewsLinks200Response.md)

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
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_geo_coordinates**
> GetGeoCoordinates200Response get_geo_coordinates(location)

Get Geo Coordinates

Retrieve the latitude and longitude of a location name. Given this information you can fill the location-filter parameter in the news search endpoint.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import worldnewsapi
from worldnewsapi.models.get_geo_coordinates200_response import GetGeoCoordinates200Response
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
    location = 'Tokyo, Japan' # str | The address or name of the location.

    try:
        # Get Geo Coordinates
        api_response = api_instance.get_geo_coordinates(location)
        print("The response of NewsApi->get_geo_coordinates:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NewsApi->get_geo_coordinates: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location** | **str**| The address or name of the location. | 

### Return type

[**GetGeoCoordinates200Response**](GetGeoCoordinates200Response.md)

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
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **news_website_to_rss_feed**
> object news_website_to_rss_feed(url, extract_news=extract_news)

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
    url = 'https://www.bbc.com/' # str | The url of the site for which an RSS feed should be created.
    extract_news = true # bool | Whether to extract the news for each link instead of just returning the link. (optional)

    try:
        # News Website to RSS Feed
        api_response = api_instance.news_website_to_rss_feed(url, extract_news=extract_news)
        print("The response of NewsApi->news_website_to_rss_feed:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NewsApi->news_website_to_rss_feed: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **str**| The url of the site for which an RSS feed should be created. | 
 **extract_news** | **bool**| Whether to extract the news for each link instead of just returning the link. | [optional] 

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
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieve_news_articles_by_ids**
> RetrieveNewsArticlesByIds200Response retrieve_news_articles_by_ids(ids)

Retrieve News Articles by Ids

Retrieve information about one or more news articles by their ids. The ids can be retrieved from the search news or top news APIs.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import worldnewsapi
from worldnewsapi.models.retrieve_news_articles_by_ids200_response import RetrieveNewsArticlesByIds200Response
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
    ids = '2352,2354' # str | A comma separated list of news ids.

    try:
        # Retrieve News Articles by Ids
        api_response = api_instance.retrieve_news_articles_by_ids(ids)
        print("The response of NewsApi->retrieve_news_articles_by_ids:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NewsApi->retrieve_news_articles_by_ids: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **str**| A comma separated list of news ids. | 

### Return type

[**RetrieveNewsArticlesByIds200Response**](RetrieveNewsArticlesByIds200Response.md)

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
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieve_newspaper_front_page**
> RetrieveNewspaperFrontPage200Response retrieve_newspaper_front_page(source_country=source_country, source_name=source_name, var_date=var_date)

Retrieve Newspaper Front Page

Get the front pages of newspapers from around the world. The API provides images of the front pages of newspapers from different countries. Here's an example of some of today's newspapers:

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import worldnewsapi
from worldnewsapi.models.retrieve_newspaper_front_page200_response import RetrieveNewspaperFrontPage200Response
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
    source_country = 'au' # str | The ISO 3166 country code of the newspaper publication. (optional)
    source_name = 'herald-sun' # str | The identifier of the publication see attached list. (optional)
    var_date = '2024-07-09' # str | The date for which the front page should be retrieved. You can also go into the past, the earliest date is 2024-07-09. (optional)

    try:
        # Retrieve Newspaper Front Page
        api_response = api_instance.retrieve_newspaper_front_page(source_country=source_country, source_name=source_name, var_date=var_date)
        print("The response of NewsApi->retrieve_newspaper_front_page:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NewsApi->retrieve_newspaper_front_page: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source_country** | **str**| The ISO 3166 country code of the newspaper publication. | [optional] 
 **source_name** | **str**| The identifier of the publication see attached list. | [optional] 
 **var_date** | **str**| The date for which the front page should be retrieved. You can also go into the past, the earliest date is 2024-07-09. | [optional] 

### Return type

[**RetrieveNewspaperFrontPage200Response**](RetrieveNewspaperFrontPage200Response.md)

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
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_news**
> SearchNews200Response search_news(text=text, text_match_indexes=text_match_indexes, source_country=source_country, language=language, min_sentiment=min_sentiment, max_sentiment=max_sentiment, earliest_publish_date=earliest_publish_date, latest_publish_date=latest_publish_date, news_sources=news_sources, authors=authors, categories=categories, entities=entities, location_filter=location_filter, sort=sort, sort_direction=sort_direction, offset=offset, number=number)

Search News

Search and filter news by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. Each returned article includes the title, the full text of the article, a summary, image URL, video URL, the publish date, the authors, the category, the language, the source country, and the sentiment of the article. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import worldnewsapi
from worldnewsapi.models.search_news200_response import SearchNews200Response
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
    text = 'tesla' # str | The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford. You can also exclude terms by putting a minus sign (-) in front of the term, e.g. tesla -ford. For exact matches just put your term in quotes, e.g. \"elon musk\". (optional)
    text_match_indexes = 'title,content' # str | If a \"text\" is given to search for, you can specify where this text is searched for. Possible values are title, content, or both separated by a comma. By default, both title and content are searched. (optional)
    source_country = 'us' # str | The ISO 3166 country code from which the news should originate. (optional)
    language = 'en' # str | The ISO 6391 language code of the news. (optional)
    min_sentiment = -0.8 # float | The minimal sentiment of the news in range [-1,1]. (optional)
    max_sentiment = 0.8 # float | The maximal sentiment of the news in range [-1,1]. (optional)
    earliest_publish_date = '2022-04-22 16:12:35' # str | The news must have been published after this date. (optional)
    latest_publish_date = '2022-04-22 16:12:35' # str | The news must have been published before this date. (optional)
    news_sources = 'https://www.bbc.co.uk' # str | A comma-separated list of news sources from which the news should originate. (optional)
    authors = 'John Doe' # str | A comma-separated list of author names. Only news from any of the given authors will be returned. (optional)
    categories = 'politics,sports' # str | A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other. Please note that the filter might leave out news, especially in non-English languages. If too few results are returned, use the text parameter instead. (optional)
    entities = 'ORG:Tesla,PER:Elon Musk' # str | Filter news by entities (see semantic types). (optional)
    location_filter = '51.050407, 13.737262, 20' # str | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\". Radius must be between 1 and 100 kilometers. (optional)
    sort = 'publish-time' # str | The sorting criteria (publish-time). (optional)
    sort_direction = 'ASC' # str | Whether to sort ascending or descending (ASC or DESC). (optional)
    offset = 0 # int | The number of news to skip in range [0,100000] (optional)
    number = 10 # int | The number of news to return in range [1,100] (optional)

    try:
        # Search News
        api_response = api_instance.search_news(text=text, text_match_indexes=text_match_indexes, source_country=source_country, language=language, min_sentiment=min_sentiment, max_sentiment=max_sentiment, earliest_publish_date=earliest_publish_date, latest_publish_date=latest_publish_date, news_sources=news_sources, authors=authors, categories=categories, entities=entities, location_filter=location_filter, sort=sort, sort_direction=sort_direction, offset=offset, number=number)
        print("The response of NewsApi->search_news:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NewsApi->search_news: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **str**| The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford. You can also exclude terms by putting a minus sign (-) in front of the term, e.g. tesla -ford. For exact matches just put your term in quotes, e.g. \&quot;elon musk\&quot;. | [optional] 
 **text_match_indexes** | **str**| If a \&quot;text\&quot; is given to search for, you can specify where this text is searched for. Possible values are title, content, or both separated by a comma. By default, both title and content are searched. | [optional] 
 **source_country** | **str**| The ISO 3166 country code from which the news should originate. | [optional] 
 **language** | **str**| The ISO 6391 language code of the news. | [optional] 
 **min_sentiment** | **float**| The minimal sentiment of the news in range [-1,1]. | [optional] 
 **max_sentiment** | **float**| The maximal sentiment of the news in range [-1,1]. | [optional] 
 **earliest_publish_date** | **str**| The news must have been published after this date. | [optional] 
 **latest_publish_date** | **str**| The news must have been published before this date. | [optional] 
 **news_sources** | **str**| A comma-separated list of news sources from which the news should originate. | [optional] 
 **authors** | **str**| A comma-separated list of author names. Only news from any of the given authors will be returned. | [optional] 
 **categories** | **str**| A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other. Please note that the filter might leave out news, especially in non-English languages. If too few results are returned, use the text parameter instead. | [optional] 
 **entities** | **str**| Filter news by entities (see semantic types). | [optional] 
 **location_filter** | **str**| Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;. Radius must be between 1 and 100 kilometers. | [optional] 
 **sort** | **str**| The sorting criteria (publish-time). | [optional] 
 **sort_direction** | **str**| Whether to sort ascending or descending (ASC or DESC). | [optional] 
 **offset** | **int**| The number of news to skip in range [0,100000] | [optional] 
 **number** | **int**| The number of news to return in range [1,100] | [optional] 

### Return type

[**SearchNews200Response**](SearchNews200Response.md)

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
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_news_sources**
> SearchNewsSources200Response search_news_sources(name)

Search News Sources

Search whether a news source is being monitored by the World News API. This API is useful if you want to know if a specific news source is available in the API.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import worldnewsapi
from worldnewsapi.models.search_news_sources200_response import SearchNewsSources200Response
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
    name = 'bbc' # str | The (partial) name of the source.

    try:
        # Search News Sources
        api_response = api_instance.search_news_sources(name)
        print("The response of NewsApi->search_news_sources:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NewsApi->search_news_sources: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| The (partial) name of the source. | 

### Return type

[**SearchNewsSources200Response**](SearchNewsSources200Response.md)

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
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **top_news**
> TopNews200Response top_news(source_country, language, var_date=var_date, headlines_only=headlines_only)

Top News

Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import worldnewsapi
from worldnewsapi.models.top_news200_response import TopNews200Response
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
    source_country = 'us' # str | The ISO 3166 country code of the country for which top news should be retrieved.
    language = 'en' # str | The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
    var_date = '2024-05-30' # str | The date for which the top news should be retrieved. If no date is given, the current day is assumed. (optional)
    headlines_only = false # bool | Whether to only return basic information such as id, title, and url of the news. (optional)

    try:
        # Top News
        api_response = api_instance.top_news(source_country, language, var_date=var_date, headlines_only=headlines_only)
        print("The response of NewsApi->top_news:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NewsApi->top_news: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source_country** | **str**| The ISO 3166 country code of the country for which top news should be retrieved. | 
 **language** | **str**| The ISO 6391 language code of the top news. The language must be one spoken in the source-country. | 
 **var_date** | **str**| The date for which the top news should be retrieved. If no date is given, the current day is assumed. | [optional] 
 **headlines_only** | **bool**| Whether to only return basic information such as id, title, and url of the news. | [optional] 

### Return type

[**TopNews200Response**](TopNews200Response.md)

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
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

