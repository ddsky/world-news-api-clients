# worldnewsapi

The world's news wrapped into a single API.


## Installation & Usage

### Requirements

PHP 7.4 and later.
Should also work with PHP 8.0.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/ddsky/world-news-api-clients/tree/main/php/.git"
    }
  ],
  "require": {
    "ddsky/world-news-api-clients/tree/main/php/": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/worldnewsapi/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

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
$analyze = true; // bool | Whether to analyze the extracted news (extract entities, detect sentiment etc.)

try {
    $result = $apiInstance->extractNews($url, $analyze);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NewsApi->extractNews: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *https://api.worldnewsapi.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*NewsApi* | [**extractNews**](docs/Api/NewsApi.md#extractnews) | **GET** /extract-news | Extract News
*NewsApi* | [**extractNewsLinks**](docs/Api/NewsApi.md#extractnewslinks) | **GET** /extract-news-links | Extract News Links
*NewsApi* | [**getGeoCoordinates**](docs/Api/NewsApi.md#getgeocoordinates) | **GET** /geo-coordinates | Get Geo Coordinates
*NewsApi* | [**newsWebsiteToRSSFeed**](docs/Api/NewsApi.md#newswebsitetorssfeed) | **GET** /feed.rss | News Website to RSS Feed
*NewsApi* | [**retrieveNewsArticlesByIds**](docs/Api/NewsApi.md#retrievenewsarticlesbyids) | **GET** /retrieve-news | Retrieve News Articles by Ids
*NewsApi* | [**retrieveNewspaperFrontPage**](docs/Api/NewsApi.md#retrievenewspaperfrontpage) | **GET** /retrieve-front-page | Retrieve Newspaper Front Page
*NewsApi* | [**searchNews**](docs/Api/NewsApi.md#searchnews) | **GET** /search-news | Search News
*NewsApi* | [**searchNewsSources**](docs/Api/NewsApi.md#searchnewssources) | **GET** /search-news-sources | Search News Sources
*NewsApi* | [**topNews**](docs/Api/NewsApi.md#topnews) | **GET** /top-news | Top News

## Models

- [ExtractNews200Response](docs/Model/ExtractNews200Response.md)
- [ExtractNews200ResponseImagesInner](docs/Model/ExtractNews200ResponseImagesInner.md)
- [ExtractNews200ResponseVideosInner](docs/Model/ExtractNews200ResponseVideosInner.md)
- [ExtractNewsLinks200Response](docs/Model/ExtractNewsLinks200Response.md)
- [GetGeoCoordinates200Response](docs/Model/GetGeoCoordinates200Response.md)
- [RetrieveNewsArticlesByIds200Response](docs/Model/RetrieveNewsArticlesByIds200Response.md)
- [RetrieveNewsArticlesByIds200ResponseNewsInner](docs/Model/RetrieveNewsArticlesByIds200ResponseNewsInner.md)
- [RetrieveNewspaperFrontPage200Response](docs/Model/RetrieveNewspaperFrontPage200Response.md)
- [RetrieveNewspaperFrontPage200ResponseFrontPage](docs/Model/RetrieveNewspaperFrontPage200ResponseFrontPage.md)
- [SearchNews200Response](docs/Model/SearchNews200Response.md)
- [SearchNews200ResponseNewsInner](docs/Model/SearchNews200ResponseNewsInner.md)
- [SearchNewsSources200Response](docs/Model/SearchNewsSources200Response.md)
- [SearchNewsSources200ResponseSourcesInner](docs/Model/SearchNewsSources200ResponseSourcesInner.md)
- [TopNews200Response](docs/Model/TopNews200Response.md)
- [TopNews200ResponseTopNewsInner](docs/Model/TopNews200ResponseTopNewsInner.md)
- [TopNews200ResponseTopNewsInnerNewsInner](docs/Model/TopNews200ResponseTopNewsInnerNewsInner.md)

## Authorization

Authentication schemes defined for the API:
### apiKey

- **Type**: API key
- **API key parameter name**: api-key
- **Location**: URL query string


### headerApiKey

- **Type**: API key
- **API key parameter name**: x-api-key
- **Location**: HTTP header


## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author

mail@worldnewsapi.com

## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `2.2.0`
    - Package version: `2.2.0`
    - Generator version: `7.8.0-SNAPSHOT`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
