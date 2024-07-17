# OpenapiClient::NewsApi

All URIs are relative to *https://api.worldnewsapi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**extract_news**](NewsApi.md#extract_news) | **GET** /extract-news | Extract News |
| [**extract_news_links**](NewsApi.md#extract_news_links) | **GET** /extract-news-links | Extract News Links |
| [**get_geo_coordinates**](NewsApi.md#get_geo_coordinates) | **GET** /geo-coordinates | Get Geo Coordinates |
| [**news_website_to_rss_feed**](NewsApi.md#news_website_to_rss_feed) | **GET** /feed.rss | News Website to RSS Feed |
| [**newspaper_front_pages**](NewsApi.md#newspaper_front_pages) | **GET** /retrieve-front-page | Newspaper Front Pages |
| [**retrieve_news_articles_by_ids**](NewsApi.md#retrieve_news_articles_by_ids) | **GET** /retrieve-news | Retrieve News Articles by Ids |
| [**search_news**](NewsApi.md#search_news) | **GET** /search-news | Search News |
| [**top_news**](NewsApi.md#top_news) | **GET** /top-news | Top News |


## extract_news

> <ExtractNews200Response> extract_news(url, analyze)

Extract News

Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, images, videos, publish date, authors, language, source country, and sentiment of the news article.

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

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
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

> <Array(<ExtractNews200Response>, Integer, Hash)> extract_news_with_http_info(url, analyze)

```ruby
begin
  # Extract News
  data, status_code, headers = api_instance.extract_news_with_http_info(url, analyze)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExtractNews200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling NewsApi->extract_news_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The url of the news. |  |
| **analyze** | **Boolean** | Whether to analyze the news (extract entities etc.) |  |

### Return type

[**ExtractNews200Response**](ExtractNews200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## extract_news_links

> <ExtractNewsLinks200Response> extract_news_links(url, analyze)

Extract News Links

Extract news links from a news website.

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

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::NewsApi.new
url = 'https://www.bbc.com/news/world-us-canada-59340789' # String | The url of the news.
analyze = true # Boolean | Whether to analyze the news (extract entities etc.)

begin
  # Extract News Links
  result = api_instance.extract_news_links(url, analyze)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling NewsApi->extract_news_links: #{e}"
end
```

#### Using the extract_news_links_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExtractNewsLinks200Response>, Integer, Hash)> extract_news_links_with_http_info(url, analyze)

```ruby
begin
  # Extract News Links
  data, status_code, headers = api_instance.extract_news_links_with_http_info(url, analyze)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExtractNewsLinks200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling NewsApi->extract_news_links_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The url of the news. |  |
| **analyze** | **Boolean** | Whether to analyze the news (extract entities etc.) |  |

### Return type

[**ExtractNewsLinks200Response**](ExtractNewsLinks200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_geo_coordinates

> <GetGeoCoordinates200Response> get_geo_coordinates(location)

Get Geo Coordinates

Retrieve the latitude and longitude of a location name. Given this information you can fill the location-filter parameter in the news search endpoint.

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

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::NewsApi.new
location = 'Tokyo, Japan' # String | The address or name of the location.

begin
  # Get Geo Coordinates
  result = api_instance.get_geo_coordinates(location)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling NewsApi->get_geo_coordinates: #{e}"
end
```

#### Using the get_geo_coordinates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetGeoCoordinates200Response>, Integer, Hash)> get_geo_coordinates_with_http_info(location)

```ruby
begin
  # Get Geo Coordinates
  data, status_code, headers = api_instance.get_geo_coordinates_with_http_info(location)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetGeoCoordinates200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling NewsApi->get_geo_coordinates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location** | **String** | The address or name of the location. |  |

### Return type

[**GetGeoCoordinates200Response**](GetGeoCoordinates200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## news_website_to_rss_feed

> Object news_website_to_rss_feed(url, analyze)

News Website to RSS Feed

Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page.

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

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::NewsApi.new
url = 'https://www.bbc.com/news/world-us-canada-59340789' # String | The url of the news.
analyze = true # Boolean | Whether to analyze the news (extract entities etc.)

begin
  # News Website to RSS Feed
  result = api_instance.news_website_to_rss_feed(url, analyze)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling NewsApi->news_website_to_rss_feed: #{e}"
end
```

#### Using the news_website_to_rss_feed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> news_website_to_rss_feed_with_http_info(url, analyze)

```ruby
begin
  # News Website to RSS Feed
  data, status_code, headers = api_instance.news_website_to_rss_feed_with_http_info(url, analyze)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling NewsApi->news_website_to_rss_feed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The url of the news. |  |
| **analyze** | **Boolean** | Whether to analyze the news (extract entities etc.) |  |

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/xml


## newspaper_front_pages

> <NewspaperFrontPages200Response> newspaper_front_pages(opts)

Newspaper Front Pages

Get the front pages of newspapers from around the world. The API provides images of the front pages of newspapers from different countries. Here's an example of some of today's newspapers:

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

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::NewsApi.new
opts = {
  source_country: 'au', # String | The ISO 3166 country code of the newspaper publication.
  source_name: 'herald-sun', # String | The identifier of the publication see attached list.
  date: '2024-07-09' # String | The date for which the front page should be retrieved. You can also go into the past, the earliest date is 2024-07-09.
}

begin
  # Newspaper Front Pages
  result = api_instance.newspaper_front_pages(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling NewsApi->newspaper_front_pages: #{e}"
end
```

#### Using the newspaper_front_pages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NewspaperFrontPages200Response>, Integer, Hash)> newspaper_front_pages_with_http_info(opts)

```ruby
begin
  # Newspaper Front Pages
  data, status_code, headers = api_instance.newspaper_front_pages_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NewspaperFrontPages200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling NewsApi->newspaper_front_pages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_country** | **String** | The ISO 3166 country code of the newspaper publication. | [optional] |
| **source_name** | **String** | The identifier of the publication see attached list. | [optional] |
| **date** | **String** | The date for which the front page should be retrieved. You can also go into the past, the earliest date is 2024-07-09. | [optional] |

### Return type

[**NewspaperFrontPages200Response**](NewspaperFrontPages200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_news_articles_by_ids

> <RetrieveNewsArticlesByIds200Response> retrieve_news_articles_by_ids(ids)

Retrieve News Articles by Ids

Retrieve information about one or more news articles by their ids. The ids can be retrieved from the search news or top news APIs.

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

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::NewsApi.new
ids = '2352,2354' # String | A comma separated list of news ids.

begin
  # Retrieve News Articles by Ids
  result = api_instance.retrieve_news_articles_by_ids(ids)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling NewsApi->retrieve_news_articles_by_ids: #{e}"
end
```

#### Using the retrieve_news_articles_by_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveNewsArticlesByIds200Response>, Integer, Hash)> retrieve_news_articles_by_ids_with_http_info(ids)

```ruby
begin
  # Retrieve News Articles by Ids
  data, status_code, headers = api_instance.retrieve_news_articles_by_ids_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveNewsArticlesByIds200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling NewsApi->retrieve_news_articles_by_ids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | A comma separated list of news ids. |  |

### Return type

[**RetrieveNewsArticlesByIds200Response**](RetrieveNewsArticlesByIds200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_news

> <SearchNews200Response> search_news(opts)

Search News

Search and filter news by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.

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

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::NewsApi.new
opts = {
  text: 'tesla', # String | The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford
  source_countries: 'us,uk', # String | A comma-separated list of ISO 3166 country codes from which the news should originate.
  language: 'en', # String | The ISO 6391 language code of the news.
  min_sentiment: -0.8, # Float | The minimal sentiment of the news in range [-1,1].
  max_sentiment: 0.8, # Float | The maximal sentiment of the news in range [-1,1].
  earliest_publish_date: '2022-04-22 16:12:35', # String | The news must have been published after this date.
  latest_publish_date: '2022-04-22 16:12:35', # String | The news must have been published before this date.
  news_sources: 'https://www.bbc.co.uk', # String | A comma-separated list of news sources from which the news should originate.
  authors: 'John Doe', # String | A comma-separated list of author names. Only news from any of the given authors will be returned.
  categories: 'politics,sports', # String | A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other.
  entities: 'ORG:Tesla', # String | Filter news by entities (see semantic types).
  location_filter: '51.050407, 13.737262, 20', # String | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\". Radius must be between 1 and 100 kilometers.
  sort: 'publish-time', # String | The sorting criteria (publish-time).
  sort_direction: 'ASC', # String | Whether to sort ascending or descending (ASC or DESC).
  offset: 0, # Integer | The number of news to skip in range [0,10000]
  number: 10 # Integer | The number of news to return in range [1,100]
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

> <Array(<SearchNews200Response>, Integer, Hash)> search_news_with_http_info(opts)

```ruby
begin
  # Search News
  data, status_code, headers = api_instance.search_news_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchNews200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling NewsApi->search_news_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford | [optional] |
| **source_countries** | **String** | A comma-separated list of ISO 3166 country codes from which the news should originate. | [optional] |
| **language** | **String** | The ISO 6391 language code of the news. | [optional] |
| **min_sentiment** | **Float** | The minimal sentiment of the news in range [-1,1]. | [optional] |
| **max_sentiment** | **Float** | The maximal sentiment of the news in range [-1,1]. | [optional] |
| **earliest_publish_date** | **String** | The news must have been published after this date. | [optional] |
| **latest_publish_date** | **String** | The news must have been published before this date. | [optional] |
| **news_sources** | **String** | A comma-separated list of news sources from which the news should originate. | [optional] |
| **authors** | **String** | A comma-separated list of author names. Only news from any of the given authors will be returned. | [optional] |
| **categories** | **String** | A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other. | [optional] |
| **entities** | **String** | Filter news by entities (see semantic types). | [optional] |
| **location_filter** | **String** | Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;. Radius must be between 1 and 100 kilometers. | [optional] |
| **sort** | **String** | The sorting criteria (publish-time). | [optional] |
| **sort_direction** | **String** | Whether to sort ascending or descending (ASC or DESC). | [optional] |
| **offset** | **Integer** | The number of news to skip in range [0,10000] | [optional] |
| **number** | **Integer** | The number of news to return in range [1,100] | [optional] |

### Return type

[**SearchNews200Response**](SearchNews200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## top_news

> <TopNews200Response> top_news(source_country, language, opts)

Top News

Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.

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

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::NewsApi.new
source_country = 'us' # String | The ISO 3166 country code of the country for which top news should be retrieved.
language = 'en' # String | The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
opts = {
  date: '2024-05-30', # String | The date for which the top news should be retrieved. If no date is given, the current day is assumed.
  headlines_only: false # Boolean | Whether to only return basic information such as id, title, and url of the news.
}

begin
  # Top News
  result = api_instance.top_news(source_country, language, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling NewsApi->top_news: #{e}"
end
```

#### Using the top_news_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TopNews200Response>, Integer, Hash)> top_news_with_http_info(source_country, language, opts)

```ruby
begin
  # Top News
  data, status_code, headers = api_instance.top_news_with_http_info(source_country, language, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TopNews200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling NewsApi->top_news_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_country** | **String** | The ISO 3166 country code of the country for which top news should be retrieved. |  |
| **language** | **String** | The ISO 6391 language code of the top news. The language must be one spoken in the source-country. |  |
| **date** | **String** | The date for which the top news should be retrieved. If no date is given, the current day is assumed. | [optional] |
| **headlines_only** | **Boolean** | Whether to only return basic information such as id, title, and url of the news. | [optional] |

### Return type

[**TopNews200Response**](TopNews200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

