# WorldNewsApi.NewsApi

All URIs are relative to *https://api.worldnewsapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**extractNews**](NewsApi.md#extractNews) | **GET** /extract-news | Extract News
[**geoCoordinates**](NewsApi.md#geoCoordinates) | **GET** /geo-coordinates | Get Geo Coordinates
[**searchNews**](NewsApi.md#searchNews) | **GET** /search-news | Search News



## extractNews

> InlineResponse2001 extractNews(url, analyze)

Extract News

Extract a news entry from a news site.

### Example

```javascript
import WorldNewsApi from 'world_news_api';
let defaultClient = WorldNewsApi.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';

let apiInstance = new WorldNewsApi.NewsApi();
let url = https://www.bbc.com/news/world-us-canada-59340789; // String | The url of the news.
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
 **analyze** | **Boolean**| Whether to analyze the news (extract entities etc.) | [default to false]

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## geoCoordinates

> InlineResponse2002 geoCoordinates(location)

Get Geo Coordinates

Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country.

### Example

```javascript
import WorldNewsApi from 'world_news_api';
let defaultClient = WorldNewsApi.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';

let apiInstance = new WorldNewsApi.NewsApi();
let location = Tokyo, Japan; // String | The address or name of the location, e.g. Tokyo, Japan.
apiInstance.geoCoordinates(location, (error, data, response) => {
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
 **location** | **String**| The address or name of the location, e.g. Tokyo, Japan. | 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchNews

> InlineResponse200 searchNews(opts)

Search News

Search for news.

### Example

```javascript
import WorldNewsApi from 'world_news_api';
let defaultClient = WorldNewsApi.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';

let apiInstance = new WorldNewsApi.NewsApi();
let opts = {
  'text': hurricane, // String | The text to match in the news content.
  'sourceCountries': gb,us, // String | A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us.
  'language': en, // String | The ISO 6391 language code of the news, e.g. \"en\" for English.
  'minSentiment': -0.8, // Number | The minimal sentiment of the news in range [-1,1].
  'maxSentiment': 0.8, // Number | The maximal sentiment of the news in range [-1,1].
  'earliestPublishDate': 2022-04-22 16:12:35, // String | The news must have been published after this date.
  'latestPublishDate': 2022-05-23 24:16:27, // String | The news must have been published before this date.
  'newsSources': https://www.bbc.co.uk, // String | A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk
  'authors': John Doe, // String | A comma-separated list of author names. Only news from any of the given authors will be returned.
  'entities': ORG:Tesla, // String | Filter news by entities, e.g. ORG:Tesla.
  'locationFilter': 51.050407,13.737262,100, // String | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\", e.g. 51.050407, 13.737262, 100
  'offset': 10, // Number | The number of news to skip in range [0,1000]
  'number': 1, // Number | The number of news to return in range [1,100]
  'sort': publish-time, // String | The sorting criteria.
  'sortDirection': desc // String | Whether to sort ascending or descending.
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
 **text** | **String**| The text to match in the news content. | [optional] 
 **sourceCountries** | **String**| A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us. | [optional] 
 **language** | **String**| The ISO 6391 language code of the news, e.g. \&quot;en\&quot; for English. | [optional] 
 **minSentiment** | **Number**| The minimal sentiment of the news in range [-1,1]. | [optional] 
 **maxSentiment** | **Number**| The maximal sentiment of the news in range [-1,1]. | [optional] 
 **earliestPublishDate** | **String**| The news must have been published after this date. | [optional] 
 **latestPublishDate** | **String**| The news must have been published before this date. | [optional] 
 **newsSources** | **String**| A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk | [optional] 
 **authors** | **String**| A comma-separated list of author names. Only news from any of the given authors will be returned. | [optional] 
 **entities** | **String**| Filter news by entities, e.g. ORG:Tesla. | [optional] 
 **locationFilter** | **String**| Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;, e.g. 51.050407, 13.737262, 100 | [optional] 
 **offset** | **Number**| The number of news to skip in range [0,1000] | [optional] 
 **number** | **Number**| The number of news to return in range [1,100] | [optional] 
 **sort** | **String**| The sorting criteria. | [optional] 
 **sortDirection** | **String**| Whether to sort ascending or descending. | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

