# com.worldnewsapi.client\NewsApi

All URIs are relative to https://api.worldnewsapi.com.

Method | HTTP request | Description
------------- | ------------- | -------------
[**extractNews()**](NewsApi.md#extractNews) | **GET** /extract-news | Extract News
[**extractNews_0()**](NewsApi.md#extractNews_0) | **GET** /extract-news-links | Extract News
[**geoCoordinates()**](NewsApi.md#geoCoordinates) | **GET** /geo-coordinates | Get Geo Coordinates
[**newsWebsiteToRSSFeed()**](NewsApi.md#newsWebsiteToRSSFeed) | **GET** /feed.rss | News Website to RSS Feed
[**searchNews()**](NewsApi.md#searchNews) | **GET** /search-news | Search News


## `extractNews()`

```php
extractNews($url, $analyze): \com.worldnewsapi.client\com.worldnewsapi.client.model\InlineResponse2001
```

Extract News

Extract a news entry from a news site.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = com.worldnewsapi.client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.worldnewsapi.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = com.worldnewsapi.client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.worldnewsapi.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new com.worldnewsapi.client\Api\NewsApi(
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

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string**| The url of the news. |
 **analyze** | **bool**| Whether to analyze the news (extract entities etc.) | [default to false]

### Return type

[**\com.worldnewsapi.client\com.worldnewsapi.client.model\InlineResponse2001**](../Model/InlineResponse2001.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `extractNews_0()`

```php
extractNews_0($url, $api_key, $prefix, $sub_domain): object
```

Extract News

Extract a news links from a news website.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = com.worldnewsapi.client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.worldnewsapi.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = com.worldnewsapi.client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.worldnewsapi.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new com.worldnewsapi.client\Api\NewsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$url = https://nytimes.com; // string | The url from which links should be extracted.
$api_key = abcd1234; // string | Your API key.
$prefix = ; // string | The prefix the news links must start with.
$sub_domain = true; // bool | Whether to include links to news on sub-domains.

try {
    $result = $apiInstance->extractNews_0($url, $api_key, $prefix, $sub_domain);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NewsApi->extractNews_0: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string**| The url from which links should be extracted. |
 **api_key** | **string**| Your API key. |
 **prefix** | **string**| The prefix the news links must start with. | [optional]
 **sub_domain** | **bool**| Whether to include links to news on sub-domains. | [optional]

### Return type

**object**

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: ``, `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `geoCoordinates()`

```php
geoCoordinates($location): \com.worldnewsapi.client\com.worldnewsapi.client.model\InlineResponse2002
```

Get Geo Coordinates

Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = com.worldnewsapi.client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.worldnewsapi.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = com.worldnewsapi.client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.worldnewsapi.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new com.worldnewsapi.client\Api\NewsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$location = Tokyo, Japan; // string | The address or name of the location, e.g. Tokyo, Japan.

try {
    $result = $apiInstance->geoCoordinates($location);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NewsApi->geoCoordinates: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location** | **string**| The address or name of the location, e.g. Tokyo, Japan. |

### Return type

[**\com.worldnewsapi.client\com.worldnewsapi.client.model\InlineResponse2002**](../Model/InlineResponse2002.md)

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
newsWebsiteToRSSFeed($url, $api_key, $extract_news): object
```

News Website to RSS Feed

Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = com.worldnewsapi.client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.worldnewsapi.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = com.worldnewsapi.client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.worldnewsapi.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new com.worldnewsapi.client\Api\NewsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$url = https://nytimes.com; // string | The url from which links should be extracted.
$api_key = abcd1234; // string | Your API key.
$extract_news = false; // bool | Whether extract news and add information such as description, publish date, and image to each item.

try {
    $result = $apiInstance->newsWebsiteToRSSFeed($url, $api_key, $extract_news);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NewsApi->newsWebsiteToRSSFeed: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string**| The url from which links should be extracted. |
 **api_key** | **string**| Your API key. |
 **extract_news** | **bool**| Whether extract news and add information such as description, publish date, and image to each item. | [optional]

### Return type

**object**

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: ``, `application/json`, `application/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `searchNews()`

```php
searchNews($text, $source_countries, $language, $min_sentiment, $max_sentiment, $earliest_publish_date, $latest_publish_date, $news_sources, $authors, $entities, $location_filter, $offset, $number, $sort, $sort_direction): \com.worldnewsapi.client\com.worldnewsapi.client.model\InlineResponse200
```

Search News

Search for news.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = com.worldnewsapi.client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.worldnewsapi.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = com.worldnewsapi.client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.worldnewsapi.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new com.worldnewsapi.client\Api\NewsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$text = hurricane; // string | The text to match in the news content.
$source_countries = us,uk; // string | A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us.
$language = en; // string | The ISO 6391 language code of the news, e.g. \"en\" for English.
$min_sentiment = -0.8; // double | The minimal sentiment of the news in range [-1,1].
$max_sentiment = 0.8; // double | The maximal sentiment of the news in range [-1,1].
$earliest_publish_date = 2022-04-22 16:12:35; // string | The news must have been published after this date.
$latest_publish_date = 2022-05-23 24:16:27; // string | The news must have been published before this date.
$news_sources = https://www.bbc.co.uk; // string | A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk
$authors = John Doe; // string | A comma-separated list of author names. Only news from any of the given authors will be returned.
$entities = ORG:Tesla; // string | Filter news by entities, e.g. ORG:Tesla.
$location_filter = 51.050407,13.737262,100; // string | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\", e.g. 51.050407, 13.737262, 100
$offset = 10; // int | The number of news to skip in range [0,1000]
$number = 1; // int | The number of news to return in range [1,100]
$sort = publish-time; // string | The sorting criteria.
$sort_direction = desc; // string | Whether to sort ascending or descending.

try {
    $result = $apiInstance->searchNews($text, $source_countries, $language, $min_sentiment, $max_sentiment, $earliest_publish_date, $latest_publish_date, $news_sources, $authors, $entities, $location_filter, $offset, $number, $sort, $sort_direction);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NewsApi->searchNews: ', $e->getMessage(), PHP_EOL;
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

[**\com.worldnewsapi.client\com.worldnewsapi.client.model\InlineResponse200**](../Model/InlineResponse200.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
