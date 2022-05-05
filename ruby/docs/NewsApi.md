# OpenapiClient::NewsApi

All URIs are relative to *https://api.worldnewsapi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**extract_news**](NewsApi.md#extract_news) | **GET** /extract-news | Extract News |
| [**geo_coordinates**](NewsApi.md#geo_coordinates) | **GET** /geo-coordinates | Get Geo Coordinates |
| [**search_news**](NewsApi.md#search_news) | **GET** /search-news | Search News |


## extract_news

> <InlineResponse2001> extract_news(url, analyze)

Extract News

Extract a news entry from a news site.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::NewsApi.new
url = 'https://www.bbc.com/news/world-us-canada-59340789' # String | The url of the news.
analyze = true # Boolean | Whether to analyze the news (extract entities etc.)

begin
  # Extract News
  result = api_instance.extract_news(url, analyze)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling NewsApi->extract_news: #{e}"
end
```

#### Using the extract_news_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse2001>, Integer, Hash)> extract_news_with_http_info(url, analyze)

```ruby
begin
  # Extract News
  data, status_code, headers = api_instance.extract_news_with_http_info(url, analyze)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse2001>
rescue OpenapiClient::ApiError => e
  puts "Error when calling NewsApi->extract_news_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The url of the news. |  |
| **analyze** | **Boolean** | Whether to analyze the news (extract entities etc.) | [default to false] |

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## geo_coordinates

> <InlineResponse2002> geo_coordinates(location)

Get Geo Coordinates

Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::NewsApi.new
location = 'Tokyo, Japan' # String | The address or name of the location, e.g. Tokyo, Japan.

begin
  # Get Geo Coordinates
  result = api_instance.geo_coordinates(location)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling NewsApi->geo_coordinates: #{e}"
end
```

#### Using the geo_coordinates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse2002>, Integer, Hash)> geo_coordinates_with_http_info(location)

```ruby
begin
  # Get Geo Coordinates
  data, status_code, headers = api_instance.geo_coordinates_with_http_info(location)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse2002>
rescue OpenapiClient::ApiError => e
  puts "Error when calling NewsApi->geo_coordinates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location** | **String** | The address or name of the location, e.g. Tokyo, Japan. |  |

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_news

> <InlineResponse200> search_news(opts)

Search News

Search for news.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::NewsApi.new
opts = {
  text: 'hurricane', # String | The text to match in the news content.
  source_countries: 'gb,us', # String | A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us.
  language: 'en', # String | The ISO 6391 language code of the news, e.g. \"en\" for English.
  min_sentiment: -0.8, # Float | The minimal sentiment of the news in range [-1,1].
  max_sentiment: 0.8, # Float | The maximal sentiment of the news in range [-1,1].
  earliest_publish_date: '2022-04-22 16:12:35', # String | The news must have been published after this date.
  latest_publish_date: '2022-05-23 24:16:27', # String | The news must have been published before this date.
  news_sources: 'https://www.bbc.co.uk', # String | A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk
  authors: 'John Doe', # String | A comma-separated list of author names. Only news from any of the given authors will be returned.
  entities: 'ORG:Tesla', # String | Filter news by entities, e.g. ORG:Tesla.
  location_filter: '51.050407,13.737262,100', # String | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\", e.g. 51.050407, 13.737262, 100
  offset: 10, # Integer | The number of news to skip in range [0,1000]
  number: 1, # Integer | The number of news to return in range [1,100]
  sort: 'relevance', # String | The sorting criteria.
  sort_direction: 'asc' # String | Whether to sort ascending or descending.
}

begin
  # Search News
  result = api_instance.search_news(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling NewsApi->search_news: #{e}"
end
```

#### Using the search_news_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse200>, Integer, Hash)> search_news_with_http_info(opts)

```ruby
begin
  # Search News
  data, status_code, headers = api_instance.search_news_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse200>
rescue OpenapiClient::ApiError => e
  puts "Error when calling NewsApi->search_news_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | The text to match in the news content. | [optional] |
| **source_countries** | **String** | A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us. | [optional] |
| **language** | **String** | The ISO 6391 language code of the news, e.g. \&quot;en\&quot; for English. | [optional] |
| **min_sentiment** | **Float** | The minimal sentiment of the news in range [-1,1]. | [optional] |
| **max_sentiment** | **Float** | The maximal sentiment of the news in range [-1,1]. | [optional] |
| **earliest_publish_date** | **String** | The news must have been published after this date. | [optional] |
| **latest_publish_date** | **String** | The news must have been published before this date. | [optional] |
| **news_sources** | **String** | A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk | [optional] |
| **authors** | **String** | A comma-separated list of author names. Only news from any of the given authors will be returned. | [optional] |
| **entities** | **String** | Filter news by entities, e.g. ORG:Tesla. | [optional] |
| **location_filter** | **String** | Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;, e.g. 51.050407, 13.737262, 100 | [optional] |
| **offset** | **Integer** | The number of news to skip in range [0,1000] | [optional] |
| **number** | **Integer** | The number of news to return in range [1,100] | [optional] |
| **sort** | **String** | The sorting criteria. | [optional] |
| **sort_direction** | **String** | Whether to sort ascending or descending. | [optional] |

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

