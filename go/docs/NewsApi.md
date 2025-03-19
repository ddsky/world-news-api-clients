# \NewsAPI

All URIs are relative to *https://api.worldnewsapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ExtractNews**](NewsAPI.md#ExtractNews) | **Get** /extract-news | Extract News
[**ExtractNewsLinks**](NewsAPI.md#ExtractNewsLinks) | **Get** /extract-news-links | Extract News Links
[**GetGeoCoordinates**](NewsAPI.md#GetGeoCoordinates) | **Get** /geo-coordinates | Get Geo Coordinates
[**NewsWebsiteToRSSFeed**](NewsAPI.md#NewsWebsiteToRSSFeed) | **Get** /feed.rss | News Website to RSS Feed
[**RetrieveNewsArticlesByIds**](NewsAPI.md#RetrieveNewsArticlesByIds) | **Get** /retrieve-news | Retrieve News Articles by Ids
[**RetrieveNewspaperFrontPage**](NewsAPI.md#RetrieveNewspaperFrontPage) | **Get** /retrieve-front-page | Retrieve Newspaper Front Page
[**SearchNews**](NewsAPI.md#SearchNews) | **Get** /search-news | Search News
[**SearchNewsSources**](NewsAPI.md#SearchNewsSources) | **Get** /search-news-sources | Search News Sources
[**TopNews**](NewsAPI.md#TopNews) | **Get** /top-news | Top News



## ExtractNews

> ExtractNews200Response ExtractNews(ctx).Url(url).Analyze(analyze).Execute()

Extract News



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/world-news-api-clients/tree/main/go/"
)

func main() {
	url := "https://www.bbc.com/news/world-us-canada-59340789" // string | The url of the news.
	analyze := true // bool | Whether to analyze the extracted news (extract entities, detect sentiment etc.) (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.NewsAPI.ExtractNews(context.Background()).Url(url).Analyze(analyze).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `NewsAPI.ExtractNews``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ExtractNews`: ExtractNews200Response
	fmt.Fprintf(os.Stdout, "Response from `NewsAPI.ExtractNews`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiExtractNewsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string** | The url of the news. | 
 **analyze** | **bool** | Whether to analyze the extracted news (extract entities, detect sentiment etc.) | 

### Return type

[**ExtractNews200Response**](ExtractNews200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ExtractNewsLinks

> ExtractNewsLinks200Response ExtractNewsLinks(ctx).Url(url).Analyze(analyze).Execute()

Extract News Links



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/world-news-api-clients/tree/main/go/"
)

func main() {
	url := "https://www.bbc.com/news/world-us-canada-59340789" // string | The url of the news.
	analyze := true // bool | Whether to analyze the extracted news (extract entities, detect sentiment etc.) (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.NewsAPI.ExtractNewsLinks(context.Background()).Url(url).Analyze(analyze).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `NewsAPI.ExtractNewsLinks``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ExtractNewsLinks`: ExtractNewsLinks200Response
	fmt.Fprintf(os.Stdout, "Response from `NewsAPI.ExtractNewsLinks`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiExtractNewsLinksRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string** | The url of the news. | 
 **analyze** | **bool** | Whether to analyze the extracted news (extract entities, detect sentiment etc.) | 

### Return type

[**ExtractNewsLinks200Response**](ExtractNewsLinks200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetGeoCoordinates

> GetGeoCoordinates200Response GetGeoCoordinates(ctx).Location(location).Execute()

Get Geo Coordinates



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/world-news-api-clients/tree/main/go/"
)

func main() {
	location := "Tokyo, Japan" // string | The address or name of the location.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.NewsAPI.GetGeoCoordinates(context.Background()).Location(location).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `NewsAPI.GetGeoCoordinates``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetGeoCoordinates`: GetGeoCoordinates200Response
	fmt.Fprintf(os.Stdout, "Response from `NewsAPI.GetGeoCoordinates`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGetGeoCoordinatesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location** | **string** | The address or name of the location. | 

### Return type

[**GetGeoCoordinates200Response**](GetGeoCoordinates200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## NewsWebsiteToRSSFeed

> map[string]interface{} NewsWebsiteToRSSFeed(ctx).Url(url).ExtractNews(extractNews).Execute()

News Website to RSS Feed



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/world-news-api-clients/tree/main/go/"
)

func main() {
	url := "https://www.bbc.com/" // string | The url of the site for which an RSS feed should be created.
	extractNews := true // bool | Whether to extract the news for each link instead of just returning the link. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.NewsAPI.NewsWebsiteToRSSFeed(context.Background()).Url(url).ExtractNews(extractNews).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `NewsAPI.NewsWebsiteToRSSFeed``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `NewsWebsiteToRSSFeed`: map[string]interface{}
	fmt.Fprintf(os.Stdout, "Response from `NewsAPI.NewsWebsiteToRSSFeed`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiNewsWebsiteToRSSFeedRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string** | The url of the site for which an RSS feed should be created. | 
 **extractNews** | **bool** | Whether to extract the news for each link instead of just returning the link. | 

### Return type

**map[string]interface{}**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RetrieveNewsArticlesByIds

> RetrieveNewsArticlesByIds200Response RetrieveNewsArticlesByIds(ctx).Ids(ids).Execute()

Retrieve News Articles by Ids



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/world-news-api-clients/tree/main/go/"
)

func main() {
	ids := "2352,2354" // string | A comma separated list of news ids.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.NewsAPI.RetrieveNewsArticlesByIds(context.Background()).Ids(ids).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `NewsAPI.RetrieveNewsArticlesByIds``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RetrieveNewsArticlesByIds`: RetrieveNewsArticlesByIds200Response
	fmt.Fprintf(os.Stdout, "Response from `NewsAPI.RetrieveNewsArticlesByIds`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiRetrieveNewsArticlesByIdsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **string** | A comma separated list of news ids. | 

### Return type

[**RetrieveNewsArticlesByIds200Response**](RetrieveNewsArticlesByIds200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RetrieveNewspaperFrontPage

> RetrieveNewspaperFrontPage200Response RetrieveNewspaperFrontPage(ctx).SourceCountry(sourceCountry).SourceName(sourceName).Date(date).Execute()

Retrieve Newspaper Front Page



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/world-news-api-clients/tree/main/go/"
)

func main() {
	sourceCountry := "au" // string | The ISO 3166 country code of the newspaper publication. (optional)
	sourceName := "herald-sun" // string | The identifier of the publication see attached list. (optional)
	date := "2024-07-09" // string | The date for which the front page should be retrieved. You can also go into the past, the earliest date is 2024-07-09. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.NewsAPI.RetrieveNewspaperFrontPage(context.Background()).SourceCountry(sourceCountry).SourceName(sourceName).Date(date).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `NewsAPI.RetrieveNewspaperFrontPage``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RetrieveNewspaperFrontPage`: RetrieveNewspaperFrontPage200Response
	fmt.Fprintf(os.Stdout, "Response from `NewsAPI.RetrieveNewspaperFrontPage`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiRetrieveNewspaperFrontPageRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceCountry** | **string** | The ISO 3166 country code of the newspaper publication. | 
 **sourceName** | **string** | The identifier of the publication see attached list. | 
 **date** | **string** | The date for which the front page should be retrieved. You can also go into the past, the earliest date is 2024-07-09. | 

### Return type

[**RetrieveNewspaperFrontPage200Response**](RetrieveNewspaperFrontPage200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchNews

> SearchNews200Response SearchNews(ctx).Text(text).TextMatchIndexes(textMatchIndexes).SourceCountry(sourceCountry).Language(language).MinSentiment(minSentiment).MaxSentiment(maxSentiment).EarliestPublishDate(earliestPublishDate).LatestPublishDate(latestPublishDate).NewsSources(newsSources).Authors(authors).Categories(categories).Entities(entities).LocationFilter(locationFilter).Sort(sort).SortDirection(sortDirection).Offset(offset).Number(number).Execute()

Search News



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/world-news-api-clients/tree/main/go/"
)

func main() {
	text := "tesla" // string | The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford. You can also exclude terms by putting a minus sign (-) in front of the term, e.g. tesla -ford. For exact matches just put your term in quotes, e.g. \"elon musk\". (optional)
	textMatchIndexes := "title,content" // string | If a \"text\" is given to search for, you can specify where this text is searched for. Possible values are title, content, or both separated by a comma. By default, both title and content are searched. (optional)
	sourceCountry := "us" // string | The ISO 3166 country code from which the news should originate. (optional)
	language := "en" // string | The ISO 6391 language code of the news. (optional)
	minSentiment := float64(-0.8) // float64 | The minimal sentiment of the news in range [-1,1]. (optional)
	maxSentiment := float64(0.8) // float64 | The maximal sentiment of the news in range [-1,1]. (optional)
	earliestPublishDate := "2022-04-22 16:12:35" // string | The news must have been published after this date. (optional)
	latestPublishDate := "2022-04-22 16:12:35" // string | The news must have been published before this date. (optional)
	newsSources := "https://www.bbc.co.uk" // string | A comma-separated list of news sources from which the news should originate. (optional)
	authors := "John Doe" // string | A comma-separated list of author names. Only news from any of the given authors will be returned. (optional)
	categories := "politics,sports" // string | A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other. Please note that the filter might leave out news, especially in non-English languages. If too few results are returned, use the text parameter instead. (optional)
	entities := "ORG:Tesla,PER:Elon Musk" // string | Filter news by entities (see semantic types). (optional)
	locationFilter := "51.050407, 13.737262, 20" // string | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\". Radius must be between 1 and 100 kilometers. (optional)
	sort := "publish-time" // string | The sorting criteria (publish-time). (optional)
	sortDirection := "ASC" // string | Whether to sort ascending or descending (ASC or DESC). (optional)
	offset := int32(0) // int32 | The number of news to skip in range [0,100000] (optional)
	number := int32(10) // int32 | The number of news to return in range [1,100] (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.NewsAPI.SearchNews(context.Background()).Text(text).TextMatchIndexes(textMatchIndexes).SourceCountry(sourceCountry).Language(language).MinSentiment(minSentiment).MaxSentiment(maxSentiment).EarliestPublishDate(earliestPublishDate).LatestPublishDate(latestPublishDate).NewsSources(newsSources).Authors(authors).Categories(categories).Entities(entities).LocationFilter(locationFilter).Sort(sort).SortDirection(sortDirection).Offset(offset).Number(number).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `NewsAPI.SearchNews``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SearchNews`: SearchNews200Response
	fmt.Fprintf(os.Stdout, "Response from `NewsAPI.SearchNews`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchNewsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string** | The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford. You can also exclude terms by putting a minus sign (-) in front of the term, e.g. tesla -ford. For exact matches just put your term in quotes, e.g. \&quot;elon musk\&quot;. | 
 **textMatchIndexes** | **string** | If a \&quot;text\&quot; is given to search for, you can specify where this text is searched for. Possible values are title, content, or both separated by a comma. By default, both title and content are searched. | 
 **sourceCountry** | **string** | The ISO 3166 country code from which the news should originate. | 
 **language** | **string** | The ISO 6391 language code of the news. | 
 **minSentiment** | **float64** | The minimal sentiment of the news in range [-1,1]. | 
 **maxSentiment** | **float64** | The maximal sentiment of the news in range [-1,1]. | 
 **earliestPublishDate** | **string** | The news must have been published after this date. | 
 **latestPublishDate** | **string** | The news must have been published before this date. | 
 **newsSources** | **string** | A comma-separated list of news sources from which the news should originate. | 
 **authors** | **string** | A comma-separated list of author names. Only news from any of the given authors will be returned. | 
 **categories** | **string** | A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other. Please note that the filter might leave out news, especially in non-English languages. If too few results are returned, use the text parameter instead. | 
 **entities** | **string** | Filter news by entities (see semantic types). | 
 **locationFilter** | **string** | Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;. Radius must be between 1 and 100 kilometers. | 
 **sort** | **string** | The sorting criteria (publish-time). | 
 **sortDirection** | **string** | Whether to sort ascending or descending (ASC or DESC). | 
 **offset** | **int32** | The number of news to skip in range [0,100000] | 
 **number** | **int32** | The number of news to return in range [1,100] | 

### Return type

[**SearchNews200Response**](SearchNews200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchNewsSources

> SearchNewsSources200Response SearchNewsSources(ctx).Name(name).Execute()

Search News Sources



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/world-news-api-clients/tree/main/go/"
)

func main() {
	name := "bbc" // string | The (partial) name of the source.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.NewsAPI.SearchNewsSources(context.Background()).Name(name).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `NewsAPI.SearchNewsSources``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SearchNewsSources`: SearchNewsSources200Response
	fmt.Fprintf(os.Stdout, "Response from `NewsAPI.SearchNewsSources`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchNewsSourcesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string** | The (partial) name of the source. | 

### Return type

[**SearchNewsSources200Response**](SearchNewsSources200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TopNews

> TopNews200Response TopNews(ctx).SourceCountry(sourceCountry).Language(language).Date(date).HeadlinesOnly(headlinesOnly).Execute()

Top News



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/world-news-api-clients/tree/main/go/"
)

func main() {
	sourceCountry := "us" // string | The ISO 3166 country code of the country for which top news should be retrieved.
	language := "en" // string | The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
	date := "2024-05-30" // string | The date for which the top news should be retrieved. If no date is given, the current day is assumed. (optional)
	headlinesOnly := false // bool | Whether to only return basic information such as id, title, and url of the news. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.NewsAPI.TopNews(context.Background()).SourceCountry(sourceCountry).Language(language).Date(date).HeadlinesOnly(headlinesOnly).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `NewsAPI.TopNews``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `TopNews`: TopNews200Response
	fmt.Fprintf(os.Stdout, "Response from `NewsAPI.TopNews`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiTopNewsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceCountry** | **string** | The ISO 3166 country code of the country for which top news should be retrieved. | 
 **language** | **string** | The ISO 6391 language code of the top news. The language must be one spoken in the source-country. | 
 **date** | **string** | The date for which the top news should be retrieved. If no date is given, the current day is assumed. | 
 **headlinesOnly** | **bool** | Whether to only return basic information such as id, title, and url of the news. | 

### Return type

[**TopNews200Response**](TopNews200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

