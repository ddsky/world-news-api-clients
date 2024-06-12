# Worldnewsapi.NewsApi

All URIs are relative to *https://api.worldnewsapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**extractNews**](NewsApi.md#extractNews) | **GET** /extract-news | Extract News
[**extractNewsLinks**](NewsApi.md#extractNewsLinks) | **GET** /extract-news-links | Extract News Links
[**getGeoCoordinates**](NewsApi.md#getGeoCoordinates) | **GET** /geo-coordinates | Get Geo Coordinates
[**newsWebsiteToRSSFeed**](NewsApi.md#newsWebsiteToRSSFeed) | **GET** /feed.rss | News Website to RSS Feed
[**retrieveNewsArticlesByIds**](NewsApi.md#retrieveNewsArticlesByIds) | **GET** /retrieve-news | Retrieve News Articles by Ids
[**searchNews**](NewsApi.md#searchNews) | **GET** /search-news | Search News
[**topNews**](NewsApi.md#topNews) | **GET** /top-news | Top News



## extractNews

> ExtractNews200Response extractNews(url, analyze)

Extract News

Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, images, videos, publish date, authors, language, source country, and sentiment of the news article.

### Example

```javascript
import Worldnewsapi from 'worldnewsapi';
let defaultClient = Worldnewsapi.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new Worldnewsapi.NewsApi();
let url = "https://www.bbc.com/news/world-us-canada-59340789"; // String | The url of the news.
let analyze = true; // Boolean | Whether to analyze the news (extract entities etc.)
apiInstance.extractNews(url, analyze, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The url of the news. | 
 **analyze** | **Boolean**| Whether to analyze the news (extract entities etc.) | 

### Return type

[**ExtractNews200Response**](ExtractNews200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## extractNewsLinks

> ExtractNewsLinks200Response extractNewsLinks(url, analyze)

Extract News Links

Extract news links from a news website.

### Example

```javascript
import Worldnewsapi from 'worldnewsapi';
let defaultClient = Worldnewsapi.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new Worldnewsapi.NewsApi();
let url = "https://www.bbc.com/news/world-us-canada-59340789"; // String | The url of the news.
let analyze = true; // Boolean | Whether to analyze the news (extract entities etc.)
apiInstance.extractNewsLinks(url, analyze, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The url of the news. | 
 **analyze** | **Boolean**| Whether to analyze the news (extract entities etc.) | 

### Return type

[**ExtractNewsLinks200Response**](ExtractNewsLinks200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getGeoCoordinates

> GetGeoCoordinates200Response getGeoCoordinates(location)

Get Geo Coordinates

Retrieve the latitude and longitude of a location name. Given this information you can fill the location-filter parameter in the news search endpoint.

### Example

```javascript
import Worldnewsapi from 'worldnewsapi';
let defaultClient = Worldnewsapi.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new Worldnewsapi.NewsApi();
let location = "Tokyo, Japan"; // String | The address or name of the location.
apiInstance.getGeoCoordinates(location, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location** | **String**| The address or name of the location. | 

### Return type

[**GetGeoCoordinates200Response**](GetGeoCoordinates200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## newsWebsiteToRSSFeed

> Object newsWebsiteToRSSFeed(url, analyze)

News Website to RSS Feed

Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page.

### Example

```javascript
import Worldnewsapi from 'worldnewsapi';
let defaultClient = Worldnewsapi.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new Worldnewsapi.NewsApi();
let url = "https://www.bbc.com/news/world-us-canada-59340789"; // String | The url of the news.
let analyze = true; // Boolean | Whether to analyze the news (extract entities etc.)
apiInstance.newsWebsiteToRSSFeed(url, analyze, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The url of the news. | 
 **analyze** | **Boolean**| Whether to analyze the news (extract entities etc.) | 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/xml


## retrieveNewsArticlesByIds

> RetrieveNewsArticlesByIds200Response retrieveNewsArticlesByIds(ids)

Retrieve News Articles by Ids

Retrieve information about one or more news articles by their ids. The ids can be retrieved from the search news or top news APIs.

### Example

```javascript
import Worldnewsapi from 'worldnewsapi';
let defaultClient = Worldnewsapi.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new Worldnewsapi.NewsApi();
let ids = "2352,2354"; // String | A comma separated list of news ids.
apiInstance.retrieveNewsArticlesByIds(ids, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **String**| A comma separated list of news ids. | 

### Return type

[**RetrieveNewsArticlesByIds200Response**](RetrieveNewsArticlesByIds200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchNews

> SearchNews200Response searchNews(opts)

Search News

Search and filter news by text, date, location, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.

### Example

```javascript
import Worldnewsapi from 'worldnewsapi';
let defaultClient = Worldnewsapi.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new Worldnewsapi.NewsApi();
let opts = {
  'text': "tesla", // String | The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford
  'sourceCountries': "us,uk", // String | A comma-separated list of ISO 3166 country codes from which the news should originate.
  'language': "en", // String | The ISO 6391 language code of the news.
  'minSentiment': -0.8, // Number | The minimal sentiment of the news in range [-1,1].
  'maxSentiment': 0.8, // Number | The maximal sentiment of the news in range [-1,1].
  'earliestPublishDate': "2022-04-22 16:12:35", // String | The news must have been published after this date.
  'latestPublishDate': "2022-04-22 16:12:35", // String | The news must have been published before this date.
  'newsSources': "https://www.bbc.co.uk", // String | A comma-separated list of news sources from which the news should originate.
  'authors': "John Doe", // String | A comma-separated list of author names. Only news from any of the given authors will be returned.
  'entities': "ORG:Tesla", // String | Filter news by entities (see semantic types).
  'locationFilter': "51.050407, 13.737262, 20", // String | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\". Radius must be between 1 and 100 kilometers.
  'sort': "publish-time", // String | The sorting criteria (publish-time or sentiment).
  'sortDirection': "ASC", // String | Whether to sort ascending or descending (ASC or DESC).
  'offset': 0, // Number | The number of news to skip in range [0,10000]
  'number': 10 // Number | The number of news to return in range [1,100]
};
apiInstance.searchNews(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String**| The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford | [optional] 
 **sourceCountries** | **String**| A comma-separated list of ISO 3166 country codes from which the news should originate. | [optional] 
 **language** | **String**| The ISO 6391 language code of the news. | [optional] 
 **minSentiment** | **Number**| The minimal sentiment of the news in range [-1,1]. | [optional] 
 **maxSentiment** | **Number**| The maximal sentiment of the news in range [-1,1]. | [optional] 
 **earliestPublishDate** | **String**| The news must have been published after this date. | [optional] 
 **latestPublishDate** | **String**| The news must have been published before this date. | [optional] 
 **newsSources** | **String**| A comma-separated list of news sources from which the news should originate. | [optional] 
 **authors** | **String**| A comma-separated list of author names. Only news from any of the given authors will be returned. | [optional] 
 **entities** | **String**| Filter news by entities (see semantic types). | [optional] 
 **locationFilter** | **String**| Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;. Radius must be between 1 and 100 kilometers. | [optional] 
 **sort** | **String**| The sorting criteria (publish-time or sentiment). | [optional] 
 **sortDirection** | **String**| Whether to sort ascending or descending (ASC or DESC). | [optional] 
 **offset** | **Number**| The number of news to skip in range [0,10000] | [optional] 
 **number** | **Number**| The number of news to return in range [1,100] | [optional] 

### Return type

[**SearchNews200Response**](SearchNews200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## topNews

> TopNews200Response topNews(sourceCountry, language, opts)

Top News

Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.

### Example

```javascript
import Worldnewsapi from 'worldnewsapi';
let defaultClient = Worldnewsapi.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new Worldnewsapi.NewsApi();
let sourceCountry = "us"; // String | The ISO 3166 country code of the country for which top news should be retrieved.
let language = "en"; // String | The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
let opts = {
  'date': "2024-05-30", // String | The date for which the top news should be retrieved. If no date is given, the current day is assumed.
  'headlinesOnly': false // Boolean | Whether to only return basic information such as id, title, and url of the news.
};
apiInstance.topNews(sourceCountry, language, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceCountry** | **String**| The ISO 3166 country code of the country for which top news should be retrieved. | 
 **language** | **String**| The ISO 6391 language code of the top news. The language must be one spoken in the source-country. | 
 **date** | **String**| The date for which the top news should be retrieved. If no date is given, the current day is assumed. | [optional] 
 **headlinesOnly** | **Boolean**| Whether to only return basic information such as id, title, and url of the news. | [optional] 

### Return type

[**TopNews200Response**](TopNews200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

