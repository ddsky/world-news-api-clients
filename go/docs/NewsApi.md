# com.worldnewsapi.client\NewsApi

All URIs are relative to *https://api.worldnewsapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ExtractNews**](NewsApi.md#ExtractNews) | **Get** /extract-news | Extract News
[**ExtractNews_0**](NewsApi.md#ExtractNews_0) | **Get** /extract-news-links | Extract News
[**GeoCoordinates**](NewsApi.md#GeoCoordinates) | **Get** /geo-coordinates | Get Geo Coordinates
[**NewsWebsiteToRSSFeed**](NewsApi.md#NewsWebsiteToRSSFeed) | **Get** /feed.rss | News Website to RSS Feed
[**SearchNews**](NewsApi.md#SearchNews) | **Get** /search-news | Search News



## ExtractNews

> InlineResponse2001 ExtractNews(ctx).Url(url).Analyze(analyze).Execute()

Extract News



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    url := "https://www.bbc.com/news/world-us-canada-59340789" // string | The url of the news.
    analyze := true // bool | Whether to analyze the news (extract entities etc.) (default to false)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.NewsApi.ExtractNews(context.Background()).Url(url).Analyze(analyze).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `NewsApi.ExtractNews``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ExtractNews`: InlineResponse2001
    fmt.Fprintf(os.Stdout, "Response from `NewsApi.ExtractNews`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiExtractNewsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string** | The url of the news. | 
 **analyze** | **bool** | Whether to analyze the news (extract entities etc.) | [default to false]

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ExtractNews_0

> map[string]interface{} ExtractNews_0(ctx).Url(url).ApiKey(apiKey).Prefix(prefix).SubDomain(subDomain).Execute()

Extract News



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    url := "https://nytimes.com" // string | The url from which links should be extracted.
    apiKey := "abcd1234" // string | Your API key.
    prefix := "prefix_example" // string | The prefix the news links must start with. (optional)
    subDomain := true // bool | Whether to include links to news on sub-domains. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.NewsApi.ExtractNews_0(context.Background()).Url(url).ApiKey(apiKey).Prefix(prefix).SubDomain(subDomain).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `NewsApi.ExtractNews_0``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ExtractNews_0`: map[string]interface{}
    fmt.Fprintf(os.Stdout, "Response from `NewsApi.ExtractNews_0`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiExtractNews_1Request struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string** | The url from which links should be extracted. | 
 **apiKey** | **string** | Your API key. | 
 **prefix** | **string** | The prefix the news links must start with. | 
 **subDomain** | **bool** | Whether to include links to news on sub-domains. | 

### Return type

**map[string]interface{}**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: , application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GeoCoordinates

> InlineResponse2002 GeoCoordinates(ctx).Location(location).Execute()

Get Geo Coordinates



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    location := "Tokyo, Japan" // string | The address or name of the location, e.g. Tokyo, Japan.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.NewsApi.GeoCoordinates(context.Background()).Location(location).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `NewsApi.GeoCoordinates``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GeoCoordinates`: InlineResponse2002
    fmt.Fprintf(os.Stdout, "Response from `NewsApi.GeoCoordinates`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGeoCoordinatesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location** | **string** | The address or name of the location, e.g. Tokyo, Japan. | 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## NewsWebsiteToRSSFeed

> map[string]interface{} NewsWebsiteToRSSFeed(ctx).Url(url).ApiKey(apiKey).ExtractNews(extractNews).Execute()

News Website to RSS Feed



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    url := "https://nytimes.com" // string | The url from which links should be extracted.
    apiKey := "abcd1234" // string | Your API key.
    extractNews := false // bool | Whether extract news and add information such as description, publish date, and image to each item. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.NewsApi.NewsWebsiteToRSSFeed(context.Background()).Url(url).ApiKey(apiKey).ExtractNews(extractNews).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `NewsApi.NewsWebsiteToRSSFeed``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `NewsWebsiteToRSSFeed`: map[string]interface{}
    fmt.Fprintf(os.Stdout, "Response from `NewsApi.NewsWebsiteToRSSFeed`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiNewsWebsiteToRSSFeedRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string** | The url from which links should be extracted. | 
 **apiKey** | **string** | Your API key. | 
 **extractNews** | **bool** | Whether extract news and add information such as description, publish date, and image to each item. | 

### Return type

**map[string]interface{}**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: , application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchNews

> InlineResponse200 SearchNews(ctx).Text(text).SourceCountries(sourceCountries).Language(language).MinSentiment(minSentiment).MaxSentiment(maxSentiment).EarliestPublishDate(earliestPublishDate).LatestPublishDate(latestPublishDate).NewsSources(newsSources).Authors(authors).Entities(entities).LocationFilter(locationFilter).Offset(offset).Number(number).Sort(sort).SortDirection(sortDirection).Execute()

Search News



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    text := "hurricane" // string | The text to match in the news content. (optional)
    sourceCountries := "us,uk" // string | A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us. (optional)
    language := "en" // string | The ISO 6391 language code of the news, e.g. \"en\" for English. (optional)
    minSentiment := float64(-0.8) // float64 | The minimal sentiment of the news in range [-1,1]. (optional)
    maxSentiment := float64(0.8) // float64 | The maximal sentiment of the news in range [-1,1]. (optional)
    earliestPublishDate := "2022-04-22 16:12:35" // string | The news must have been published after this date. (optional)
    latestPublishDate := "2022-05-23 24:16:27" // string | The news must have been published before this date. (optional)
    newsSources := "https://www.bbc.co.uk" // string | A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk (optional)
    authors := "John Doe" // string | A comma-separated list of author names. Only news from any of the given authors will be returned. (optional)
    entities := "ORG:Tesla" // string | Filter news by entities, e.g. ORG:Tesla. (optional)
    locationFilter := "51.050407,13.737262,100" // string | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\", e.g. 51.050407, 13.737262, 100 (optional)
    offset := int32(10) // int32 | The number of news to skip in range [0,1000] (optional)
    number := int32(1) // int32 | The number of news to return in range [1,100] (optional)
    sort := "publish-time" // string | The sorting criteria. (optional)
    sortDirection := "desc" // string | Whether to sort ascending or descending. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.NewsApi.SearchNews(context.Background()).Text(text).SourceCountries(sourceCountries).Language(language).MinSentiment(minSentiment).MaxSentiment(maxSentiment).EarliestPublishDate(earliestPublishDate).LatestPublishDate(latestPublishDate).NewsSources(newsSources).Authors(authors).Entities(entities).LocationFilter(locationFilter).Offset(offset).Number(number).Sort(sort).SortDirection(sortDirection).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `NewsApi.SearchNews``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `SearchNews`: InlineResponse200
    fmt.Fprintf(os.Stdout, "Response from `NewsApi.SearchNews`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchNewsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string** | The text to match in the news content. | 
 **sourceCountries** | **string** | A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us. | 
 **language** | **string** | The ISO 6391 language code of the news, e.g. \&quot;en\&quot; for English. | 
 **minSentiment** | **float64** | The minimal sentiment of the news in range [-1,1]. | 
 **maxSentiment** | **float64** | The maximal sentiment of the news in range [-1,1]. | 
 **earliestPublishDate** | **string** | The news must have been published after this date. | 
 **latestPublishDate** | **string** | The news must have been published before this date. | 
 **newsSources** | **string** | A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk | 
 **authors** | **string** | A comma-separated list of author names. Only news from any of the given authors will be returned. | 
 **entities** | **string** | Filter news by entities, e.g. ORG:Tesla. | 
 **locationFilter** | **string** | Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;, e.g. 51.050407, 13.737262, 100 | 
 **offset** | **int32** | The number of news to skip in range [0,1000] | 
 **number** | **int32** | The number of news to return in range [1,100] | 
 **sort** | **string** | The sorting criteria. | 
 **sortDirection** | **string** | Whether to sort ascending or descending. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

