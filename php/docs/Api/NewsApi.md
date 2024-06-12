# OpenAPI\Client\NewsApi

All URIs are relative to https://api.worldnewsapi.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**extractNews()**](NewsApi.md#extractNews) | **GET** /extract-news | Extract News |
| [**extractNewsLinks()**](NewsApi.md#extractNewsLinks) | **GET** /extract-news-links | Extract News Links |
| [**getGeoCoordinates()**](NewsApi.md#getGeoCoordinates) | **GET** /geo-coordinates | Get Geo Coordinates |
| [**newsWebsiteToRSSFeed()**](NewsApi.md#newsWebsiteToRSSFeed) | **GET** /feed.rss | News Website to RSS Feed |
| [**retrieveNewsArticlesByIds()**](NewsApi.md#retrieveNewsArticlesByIds) | **GET** /retrieve-news | Retrieve News Articles by Ids |
| [**searchNews()**](NewsApi.md#searchNews) | **GET** /search-news | Search News |
| [**topNews()**](NewsApi.md#topNews) | **GET** /top-news | Top News |


## `extractNews()`

```php
extractNews($url, $analyze): \OpenAPI\Client\Model\ExtractNews200Response
```

Extract News

Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, images, videos, publish date, authors, language, source country, and sentiment of the news article.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\NewsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$url = https://www.bbc.com/news/world-us-canada-59340789; // string | The url of the news.
$analyze = true; // bool | Whether to analyze the news (extract entities etc.)

try {
    $result = $apiInstance->extractNews($url, $analyze);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NewsApi->extractNews: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **url** | **string**| The url of the news. | |
| **analyze** | **bool**| Whether to analyze the news (extract entities etc.) | |

### Return type

[**\OpenAPI\Client\Model\ExtractNews200Response**](../Model/ExtractNews200Response.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `extractNewsLinks()`

```php
extractNewsLinks($url, $analyze): \OpenAPI\Client\Model\ExtractNewsLinks200Response
```

Extract News Links

Extract news links from a news website.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\NewsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$url = https://www.bbc.com/news/world-us-canada-59340789; // string | The url of the news.
$analyze = true; // bool | Whether to analyze the news (extract entities etc.)

try {
    $result = $apiInstance->extractNewsLinks($url, $analyze);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NewsApi->extractNewsLinks: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **url** | **string**| The url of the news. | |
| **analyze** | **bool**| Whether to analyze the news (extract entities etc.) | |

### Return type

[**\OpenAPI\Client\Model\ExtractNewsLinks200Response**](../Model/ExtractNewsLinks200Response.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getGeoCoordinates()`

```php
getGeoCoordinates($location): \OpenAPI\Client\Model\GetGeoCoordinates200Response
```

Get Geo Coordinates

Retrieve the latitude and longitude of a location name. Given this information you can fill the location-filter parameter in the news search endpoint.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\NewsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$location = Tokyo, Japan; // string | The address or name of the location.

try {
    $result = $apiInstance->getGeoCoordinates($location);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NewsApi->getGeoCoordinates: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **location** | **string**| The address or name of the location. | |

### Return type

[**\OpenAPI\Client\Model\GetGeoCoordinates200Response**](../Model/GetGeoCoordinates200Response.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `newsWebsiteToRSSFeed()`

```php
newsWebsiteToRSSFeed($url, $analyze): object
```

News Website to RSS Feed

Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\NewsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$url = https://www.bbc.com/news/world-us-canada-59340789; // string | The url of the news.
$analyze = true; // bool | Whether to analyze the news (extract entities etc.)

try {
    $result = $apiInstance->newsWebsiteToRSSFeed($url, $analyze);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NewsApi->newsWebsiteToRSSFeed: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **url** | **string**| The url of the news. | |
| **analyze** | **bool**| Whether to analyze the news (extract entities etc.) | |

### Return type

**object**

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `retrieveNewsArticlesByIds()`

```php
retrieveNewsArticlesByIds($ids): \OpenAPI\Client\Model\RetrieveNewsArticlesByIds200Response
```

Retrieve News Articles by Ids

Retrieve information about one or more news articles by their ids. The ids can be retrieved from the search news or top news APIs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\NewsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$ids = 2352,2354; // string | A comma separated list of news ids.

try {
    $result = $apiInstance->retrieveNewsArticlesByIds($ids);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NewsApi->retrieveNewsArticlesByIds: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ids** | **string**| A comma separated list of news ids. | |

### Return type

[**\OpenAPI\Client\Model\RetrieveNewsArticlesByIds200Response**](../Model/RetrieveNewsArticlesByIds200Response.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `searchNews()`

```php
searchNews($text, $source_countries, $language, $min_sentiment, $max_sentiment, $earliest_publish_date, $latest_publish_date, $news_sources, $authors, $entities, $location_filter, $sort, $sort_direction, $offset, $number): \OpenAPI\Client\Model\SearchNews200Response
```

Search News

Search and filter news by text, date, location, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\NewsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$text = tesla; // string | The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford
$source_countries = us,uk; // string | A comma-separated list of ISO 3166 country codes from which the news should originate.
$language = en; // string | The ISO 6391 language code of the news.
$min_sentiment = -0.8; // float | The minimal sentiment of the news in range [-1,1].
$max_sentiment = 0.8; // float | The maximal sentiment of the news in range [-1,1].
$earliest_publish_date = 2022-04-22 16:12:35; // string | The news must have been published after this date.
$latest_publish_date = 2022-04-22 16:12:35; // string | The news must have been published before this date.
$news_sources = https://www.bbc.co.uk; // string | A comma-separated list of news sources from which the news should originate.
$authors = John Doe; // string | A comma-separated list of author names. Only news from any of the given authors will be returned.
$entities = ORG:Tesla; // string | Filter news by entities (see semantic types).
$location_filter = 51.050407, 13.737262, 20; // string | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\". Radius must be between 1 and 100 kilometers.
$sort = publish-time; // string | The sorting criteria (publish-time or sentiment).
$sort_direction = ASC; // string | Whether to sort ascending or descending (ASC or DESC).
$offset = 0; // int | The number of news to skip in range [0,10000]
$number = 10; // int | The number of news to return in range [1,100]

try {
    $result = $apiInstance->searchNews($text, $source_countries, $language, $min_sentiment, $max_sentiment, $earliest_publish_date, $latest_publish_date, $news_sources, $authors, $entities, $location_filter, $sort, $sort_direction, $offset, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NewsApi->searchNews: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **text** | **string**| The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford | [optional] |
| **source_countries** | **string**| A comma-separated list of ISO 3166 country codes from which the news should originate. | [optional] |
| **language** | **string**| The ISO 6391 language code of the news. | [optional] |
| **min_sentiment** | **float**| The minimal sentiment of the news in range [-1,1]. | [optional] |
| **max_sentiment** | **float**| The maximal sentiment of the news in range [-1,1]. | [optional] |
| **earliest_publish_date** | **string**| The news must have been published after this date. | [optional] |
| **latest_publish_date** | **string**| The news must have been published before this date. | [optional] |
| **news_sources** | **string**| A comma-separated list of news sources from which the news should originate. | [optional] |
| **authors** | **string**| A comma-separated list of author names. Only news from any of the given authors will be returned. | [optional] |
| **entities** | **string**| Filter news by entities (see semantic types). | [optional] |
| **location_filter** | **string**| Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;. Radius must be between 1 and 100 kilometers. | [optional] |
| **sort** | **string**| The sorting criteria (publish-time or sentiment). | [optional] |
| **sort_direction** | **string**| Whether to sort ascending or descending (ASC or DESC). | [optional] |
| **offset** | **int**| The number of news to skip in range [0,10000] | [optional] |
| **number** | **int**| The number of news to return in range [1,100] | [optional] |

### Return type

[**\OpenAPI\Client\Model\SearchNews200Response**](../Model/SearchNews200Response.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `topNews()`

```php
topNews($source_country, $language, $date, $headlines_only): \OpenAPI\Client\Model\TopNews200Response
```

Top News

Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\NewsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$source_country = us; // string | The ISO 3166 country code of the country for which top news should be retrieved.
$language = en; // string | The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
$date = 2024-05-30; // string | The date for which the top news should be retrieved. If no date is given, the current day is assumed.
$headlines_only = false; // bool | Whether to only return basic information such as id, title, and url of the news.

try {
    $result = $apiInstance->topNews($source_country, $language, $date, $headlines_only);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NewsApi->topNews: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **source_country** | **string**| The ISO 3166 country code of the country for which top news should be retrieved. | |
| **language** | **string**| The ISO 6391 language code of the top news. The language must be one spoken in the source-country. | |
| **date** | **string**| The date for which the top news should be retrieved. If no date is given, the current day is assumed. | [optional] |
| **headlines_only** | **bool**| Whether to only return basic information such as id, title, and url of the news. | [optional] |

### Return type

[**\OpenAPI\Client\Model\TopNews200Response**](../Model/TopNews200Response.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
