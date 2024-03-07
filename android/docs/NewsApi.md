# NewsApi

All URIs are relative to *https://api.worldnewsapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**extractNews**](NewsApi.md#extractNews) | **GET** /extract-news | Extract News
[**extractNewsLinks**](NewsApi.md#extractNewsLinks) | **GET** /extract-news-links | Extract News Links
[**geoCoordinates**](NewsApi.md#geoCoordinates) | **GET** /geo-coordinates | Get Geo Coordinates
[**newsWebsiteToRSSFeed**](NewsApi.md#newsWebsiteToRSSFeed) | **GET** /feed.rss | News Website to RSS Feed
[**searchNews**](NewsApi.md#searchNews) | **GET** /search-news | Search News



## extractNews

> ExtractNewsResponse extractNews(url, analyze)

Extract News

Extract a news entry from a news site.

### Example

```java
// Import classes:
//import org.openapitools.client.api.NewsApi;

NewsApi apiInstance = new NewsApi();
String url = https://www.bbc.com/news/world-us-canada-59340789; // String | The url of the news.
Boolean analyze = true; // Boolean | Whether to analyze the news (extract entities etc.)
try {
    ExtractNewsResponse result = apiInstance.extractNews(url, analyze);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling NewsApi#extractNews");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The url of the news. | [default to null]
 **analyze** | **Boolean**| Whether to analyze the news (extract entities etc.) | [default to false]

### Return type

[**ExtractNewsResponse**](ExtractNewsResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## extractNewsLinks

> ExtractLinksResponse extractNewsLinks(url, apiKey, prefix, subDomain)

Extract News Links

Extract a news links from a news website. 

### Example

```java
// Import classes:
//import org.openapitools.client.api.NewsApi;

NewsApi apiInstance = new NewsApi();
String url = https://nytimes.com; // String | The url from which links should be extracted.
String apiKey = abcd1234; // String | Your API key.
String prefix = ; // String | The prefix the news links must start with.
Boolean subDomain = true; // Boolean | Whether to include links to news on sub-domains.
try {
    ExtractLinksResponse result = apiInstance.extractNewsLinks(url, apiKey, prefix, subDomain);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling NewsApi#extractNewsLinks");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The url from which links should be extracted. | [default to null]
 **apiKey** | **String**| Your API key. | [default to null]
 **prefix** | **String**| The prefix the news links must start with. | [optional] [default to null]
 **subDomain** | **Boolean**| Whether to include links to news on sub-domains. | [optional] [default to null]

### Return type

[**ExtractLinksResponse**](ExtractLinksResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## geoCoordinates

> GeoCoordinatesResponse geoCoordinates(location)

Get Geo Coordinates

Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country.

### Example

```java
// Import classes:
//import org.openapitools.client.api.NewsApi;

NewsApi apiInstance = new NewsApi();
String location = Tokyo, Japan; // String | The address or name of the location, e.g. Tokyo, Japan.
try {
    GeoCoordinatesResponse result = apiInstance.geoCoordinates(location);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling NewsApi#geoCoordinates");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location** | **String**| The address or name of the location, e.g. Tokyo, Japan. | [default to null]

### Return type

[**GeoCoordinatesResponse**](GeoCoordinatesResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## newsWebsiteToRSSFeed

> Object newsWebsiteToRSSFeed(url, apiKey, extractNews)

News Website to RSS Feed

Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page. 

### Example

```java
// Import classes:
//import org.openapitools.client.api.NewsApi;

NewsApi apiInstance = new NewsApi();
String url = https://nytimes.com; // String | The url from which links should be extracted.
String apiKey = abcd1234; // String | Your API key.
Boolean extractNews = false; // Boolean | Whether extract news and add information such as description, publish date, and image to each item.
try {
    Object result = apiInstance.newsWebsiteToRSSFeed(url, apiKey, extractNews);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling NewsApi#newsWebsiteToRSSFeed");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The url from which links should be extracted. | [default to null]
 **apiKey** | **String**| Your API key. | [default to null]
 **extractNews** | **Boolean**| Whether extract news and add information such as description, publish date, and image to each item. | [optional] [default to null]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/xml


## searchNews

> SearchNewsResponse searchNews(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, entities, locationFilter, offset, number, sort, sortDirection)

Search News

Search for news.

### Example

```java
// Import classes:
//import org.openapitools.client.api.NewsApi;

NewsApi apiInstance = new NewsApi();
String text = hurricane; // String | The text to match in the news content.
String sourceCountries = us,uk; // String | A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us.
String language = en; // String | The ISO 6391 language code of the news, e.g. \"en\" for English.
Double minSentiment = -0.8; // Double | The minimal sentiment of the news in range [-1,1].
Double maxSentiment = 0.8; // Double | The maximal sentiment of the news in range [-1,1].
String earliestPublishDate = 2022-04-22 16:12:35; // String | The news must have been published after this date.
String latestPublishDate = 2022-05-23 24:16:27; // String | The news must have been published before this date.
String newsSources = https://www.bbc.co.uk; // String | A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk
String authors = John Doe; // String | A comma-separated list of author names. Only news from any of the given authors will be returned.
String entities = ORG:Tesla; // String | Filter news by entities, e.g. ORG:Tesla.
String locationFilter = 51.050407,13.737262,100; // String | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\", e.g. 51.050407, 13.737262, 100
Integer offset = 10; // Integer | The number of news to skip in range [0,1000]
Integer number = 1; // Integer | The number of news to return in range [1,100]
String sort = publish-time; // String | The sorting criteria.
String sortDirection = desc; // String | Whether to sort ascending or descending.
try {
    SearchNewsResponse result = apiInstance.searchNews(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, entities, locationFilter, offset, number, sort, sortDirection);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling NewsApi#searchNews");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String**| The text to match in the news content. | [optional] [default to null]
 **sourceCountries** | **String**| A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us. | [optional] [default to null]
 **language** | **String**| The ISO 6391 language code of the news, e.g. \&quot;en\&quot; for English. | [optional] [default to null]
 **minSentiment** | **Double**| The minimal sentiment of the news in range [-1,1]. | [optional] [default to null]
 **maxSentiment** | **Double**| The maximal sentiment of the news in range [-1,1]. | [optional] [default to null]
 **earliestPublishDate** | **String**| The news must have been published after this date. | [optional] [default to null]
 **latestPublishDate** | **String**| The news must have been published before this date. | [optional] [default to null]
 **newsSources** | **String**| A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk | [optional] [default to null]
 **authors** | **String**| A comma-separated list of author names. Only news from any of the given authors will be returned. | [optional] [default to null]
 **entities** | **String**| Filter news by entities, e.g. ORG:Tesla. | [optional] [default to null]
 **locationFilter** | **String**| Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;, e.g. 51.050407, 13.737262, 100 | [optional] [default to null]
 **offset** | **Integer**| The number of news to skip in range [0,1000] | [optional] [default to null]
 **number** | **Integer**| The number of news to return in range [1,100] | [optional] [default to null]
 **sort** | **String**| The sorting criteria. | [optional] [default to null] [enum: relevance, publish-time, sentiment]
 **sortDirection** | **String**| Whether to sort ascending or descending. | [optional] [default to null] [enum: asc, desc]

### Return type

[**SearchNewsResponse**](SearchNewsResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

