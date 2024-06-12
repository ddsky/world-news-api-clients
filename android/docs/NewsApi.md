# NewsApi

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

```java
// Import classes:
//import com.worldnewsapi.NewsApi;

NewsApi apiInstance = new NewsApi();
String url = https://www.bbc.com/news/world-us-canada-59340789; // String | The url of the news.
Boolean analyze = true; // Boolean | Whether to analyze the news (extract entities etc.)
try {
    ExtractNews200Response result = apiInstance.extractNews(url, analyze);
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
 **analyze** | **Boolean**| Whether to analyze the news (extract entities etc.) | [default to null]

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

```java
// Import classes:
//import com.worldnewsapi.NewsApi;

NewsApi apiInstance = new NewsApi();
String url = https://www.bbc.com/news/world-us-canada-59340789; // String | The url of the news.
Boolean analyze = true; // Boolean | Whether to analyze the news (extract entities etc.)
try {
    ExtractNewsLinks200Response result = apiInstance.extractNewsLinks(url, analyze);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling NewsApi#extractNewsLinks");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The url of the news. | [default to null]
 **analyze** | **Boolean**| Whether to analyze the news (extract entities etc.) | [default to null]

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

```java
// Import classes:
//import com.worldnewsapi.NewsApi;

NewsApi apiInstance = new NewsApi();
String location = Tokyo, Japan; // String | The address or name of the location.
try {
    GetGeoCoordinates200Response result = apiInstance.getGeoCoordinates(location);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling NewsApi#getGeoCoordinates");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location** | **String**| The address or name of the location. | [default to null]

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

```java
// Import classes:
//import com.worldnewsapi.NewsApi;

NewsApi apiInstance = new NewsApi();
String url = https://www.bbc.com/news/world-us-canada-59340789; // String | The url of the news.
Boolean analyze = true; // Boolean | Whether to analyze the news (extract entities etc.)
try {
    Object result = apiInstance.newsWebsiteToRSSFeed(url, analyze);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling NewsApi#newsWebsiteToRSSFeed");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The url of the news. | [default to null]
 **analyze** | **Boolean**| Whether to analyze the news (extract entities etc.) | [default to null]

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

```java
// Import classes:
//import com.worldnewsapi.NewsApi;

NewsApi apiInstance = new NewsApi();
String ids = 2352,2354; // String | A comma separated list of news ids.
try {
    RetrieveNewsArticlesByIds200Response result = apiInstance.retrieveNewsArticlesByIds(ids);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling NewsApi#retrieveNewsArticlesByIds");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **String**| A comma separated list of news ids. | [default to null]

### Return type

[**RetrieveNewsArticlesByIds200Response**](RetrieveNewsArticlesByIds200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchNews

> SearchNews200Response searchNews(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, entities, locationFilter, sort, sortDirection, offset, number)

Search News

Search and filter news by text, date, location, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.

### Example

```java
// Import classes:
//import com.worldnewsapi.NewsApi;

NewsApi apiInstance = new NewsApi();
String text = tesla; // String | The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford
String sourceCountries = us,uk; // String | A comma-separated list of ISO 3166 country codes from which the news should originate.
String language = en; // String | The ISO 6391 language code of the news.
Double minSentiment = -0.8; // Double | The minimal sentiment of the news in range [-1,1].
Double maxSentiment = 0.8; // Double | The maximal sentiment of the news in range [-1,1].
String earliestPublishDate = 2022-04-22 16:12:35; // String | The news must have been published after this date.
String latestPublishDate = 2022-04-22 16:12:35; // String | The news must have been published before this date.
String newsSources = https://www.bbc.co.uk; // String | A comma-separated list of news sources from which the news should originate.
String authors = John Doe; // String | A comma-separated list of author names. Only news from any of the given authors will be returned.
String entities = ORG:Tesla; // String | Filter news by entities (see semantic types).
String locationFilter = 51.050407, 13.737262, 20; // String | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\". Radius must be between 1 and 100 kilometers.
String sort = publish-time; // String | The sorting criteria (publish-time or sentiment).
String sortDirection = ASC; // String | Whether to sort ascending or descending (ASC or DESC).
Integer offset = 0; // Integer | The number of news to skip in range [0,10000]
Integer number = 10; // Integer | The number of news to return in range [1,100]
try {
    SearchNews200Response result = apiInstance.searchNews(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, entities, locationFilter, sort, sortDirection, offset, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling NewsApi#searchNews");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String**| The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford | [optional] [default to null]
 **sourceCountries** | **String**| A comma-separated list of ISO 3166 country codes from which the news should originate. | [optional] [default to null]
 **language** | **String**| The ISO 6391 language code of the news. | [optional] [default to null]
 **minSentiment** | **Double**| The minimal sentiment of the news in range [-1,1]. | [optional] [default to null]
 **maxSentiment** | **Double**| The maximal sentiment of the news in range [-1,1]. | [optional] [default to null]
 **earliestPublishDate** | **String**| The news must have been published after this date. | [optional] [default to null]
 **latestPublishDate** | **String**| The news must have been published before this date. | [optional] [default to null]
 **newsSources** | **String**| A comma-separated list of news sources from which the news should originate. | [optional] [default to null]
 **authors** | **String**| A comma-separated list of author names. Only news from any of the given authors will be returned. | [optional] [default to null]
 **entities** | **String**| Filter news by entities (see semantic types). | [optional] [default to null]
 **locationFilter** | **String**| Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;. Radius must be between 1 and 100 kilometers. | [optional] [default to null]
 **sort** | **String**| The sorting criteria (publish-time or sentiment). | [optional] [default to null]
 **sortDirection** | **String**| Whether to sort ascending or descending (ASC or DESC). | [optional] [default to null]
 **offset** | **Integer**| The number of news to skip in range [0,10000] | [optional] [default to null]
 **number** | **Integer**| The number of news to return in range [1,100] | [optional] [default to null]

### Return type

[**SearchNews200Response**](SearchNews200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## topNews

> TopNews200Response topNews(sourceCountry, language, date, headlinesOnly)

Top News

Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.

### Example

```java
// Import classes:
//import com.worldnewsapi.NewsApi;

NewsApi apiInstance = new NewsApi();
String sourceCountry = us; // String | The ISO 3166 country code of the country for which top news should be retrieved.
String language = en; // String | The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
String date = 2024-05-30; // String | The date for which the top news should be retrieved. If no date is given, the current day is assumed.
Boolean headlinesOnly = false; // Boolean | Whether to only return basic information such as id, title, and url of the news.
try {
    TopNews200Response result = apiInstance.topNews(sourceCountry, language, date, headlinesOnly);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling NewsApi#topNews");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceCountry** | **String**| The ISO 3166 country code of the country for which top news should be retrieved. | [default to null]
 **language** | **String**| The ISO 6391 language code of the top news. The language must be one spoken in the source-country. | [default to null]
 **date** | **String**| The date for which the top news should be retrieved. If no date is given, the current day is assumed. | [optional] [default to null]
 **headlinesOnly** | **Boolean**| Whether to only return basic information such as id, title, and url of the news. | [optional] [default to null]

### Return type

[**TopNews200Response**](TopNews200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

