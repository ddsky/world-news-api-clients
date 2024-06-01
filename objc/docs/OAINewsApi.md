# OAINewsApi

All URIs are relative to *https://api.worldnewsapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**extractNews**](OAINewsApi.md#extractnews) | **GET** /extract-news | Extract News
[**extractNewsLinks**](OAINewsApi.md#extractnewslinks) | **GET** /extract-news-links | Extract News Links
[**getGeoCoordinates**](OAINewsApi.md#getgeocoordinates) | **GET** /geo-coordinates | Get Geo Coordinates
[**newsWebsiteToRSSFeed**](OAINewsApi.md#newswebsitetorssfeed) | **GET** /feed.rss | News Website to RSS Feed
[**searchNews**](OAINewsApi.md#searchnews) | **GET** /search-news | Search News
[**topNews**](OAINewsApi.md#topnews) | **GET** /top-news | Top News


# **extractNews**
```objc
-(NSURLSessionTask*) extractNewsWithUrl: (NSString*) url
    analyze: (NSNumber*) analyze
        completionHandler: (void (^)(OAIExtractNews200Response* output, NSError* error)) handler;
```

Extract News

Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];

// Configure API key authorization: (authentication scheme: headerApiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* url = https://www.bbc.com/news/world-us-canada-59340789; // The url of the news.
NSNumber* analyze = true; // Whether to analyze the news (extract entities etc.)

OAINewsApi*apiInstance = [[OAINewsApi alloc] init];

// Extract News
[apiInstance extractNewsWithUrl:url
              analyze:analyze
          completionHandler: ^(OAIExtractNews200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAINewsApi->extractNews: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **NSString***| The url of the news. | 
 **analyze** | **NSNumber***| Whether to analyze the news (extract entities etc.) | 

### Return type

[**OAIExtractNews200Response***](OAIExtractNews200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **extractNewsLinks**
```objc
-(NSURLSessionTask*) extractNewsLinksWithUrl: (NSString*) url
    analyze: (NSNumber*) analyze
        completionHandler: (void (^)(OAIExtractNewsLinks200Response* output, NSError* error)) handler;
```

Extract News Links

Extract news links from a news website.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];

// Configure API key authorization: (authentication scheme: headerApiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* url = https://www.bbc.com/news/world-us-canada-59340789; // The url of the news.
NSNumber* analyze = true; // Whether to analyze the news (extract entities etc.)

OAINewsApi*apiInstance = [[OAINewsApi alloc] init];

// Extract News Links
[apiInstance extractNewsLinksWithUrl:url
              analyze:analyze
          completionHandler: ^(OAIExtractNewsLinks200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAINewsApi->extractNewsLinks: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **NSString***| The url of the news. | 
 **analyze** | **NSNumber***| Whether to analyze the news (extract entities etc.) | 

### Return type

[**OAIExtractNewsLinks200Response***](OAIExtractNewsLinks200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGeoCoordinates**
```objc
-(NSURLSessionTask*) getGeoCoordinatesWithLocation: (NSString*) location
        completionHandler: (void (^)(OAIGetGeoCoordinates200Response* output, NSError* error)) handler;
```

Get Geo Coordinates

Retrieve the latitude and longitude of a location name. Given this information you can fill the location-filter parameter in the news search endpoint.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];

// Configure API key authorization: (authentication scheme: headerApiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* location = Tokyo, Japan; // The address or name of the location.

OAINewsApi*apiInstance = [[OAINewsApi alloc] init];

// Get Geo Coordinates
[apiInstance getGeoCoordinatesWithLocation:location
          completionHandler: ^(OAIGetGeoCoordinates200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAINewsApi->getGeoCoordinates: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location** | **NSString***| The address or name of the location. | 

### Return type

[**OAIGetGeoCoordinates200Response***](OAIGetGeoCoordinates200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **newsWebsiteToRSSFeed**
```objc
-(NSURLSessionTask*) newsWebsiteToRSSFeedWithUrl: (NSString*) url
    analyze: (NSNumber*) analyze
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

News Website to RSS Feed

Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];

// Configure API key authorization: (authentication scheme: headerApiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* url = https://www.bbc.com/news/world-us-canada-59340789; // The url of the news.
NSNumber* analyze = true; // Whether to analyze the news (extract entities etc.)

OAINewsApi*apiInstance = [[OAINewsApi alloc] init];

// News Website to RSS Feed
[apiInstance newsWebsiteToRSSFeedWithUrl:url
              analyze:analyze
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAINewsApi->newsWebsiteToRSSFeed: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **NSString***| The url of the news. | 
 **analyze** | **NSNumber***| Whether to analyze the news (extract entities etc.) | 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchNews**
```objc
-(NSURLSessionTask*) searchNewsWithText: (NSString*) text
    sourceCountries: (NSString*) sourceCountries
    language: (NSString*) language
    minSentiment: (NSNumber*) minSentiment
    maxSentiment: (NSNumber*) maxSentiment
    earliestPublishDate: (NSString*) earliestPublishDate
    latestPublishDate: (NSString*) latestPublishDate
    varNewsSources: (NSString*) varNewsSources
    authors: (NSString*) authors
    entities: (NSString*) entities
    locationFilter: (NSString*) locationFilter
    sort: (NSString*) sort
    sortDirection: (NSString*) sortDirection
    offset: (NSNumber*) offset
    number: (NSNumber*) number
        completionHandler: (void (^)(OAISearchNews200Response* output, NSError* error)) handler;
```

Search News

Search and filter news by text, date, location, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];

// Configure API key authorization: (authentication scheme: headerApiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* text = tesla; // The text to match in the news content (at least 3 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford (optional)
NSString* sourceCountries = us,uk; // A comma-separated list of ISO 3166 country codes from which the news should originate. (optional)
NSString* language = en; // The ISO 6391 language code of the news. (optional)
NSNumber* minSentiment = -0.8; // The minimal sentiment of the news in range [-1,1]. (optional)
NSNumber* maxSentiment = 0.8; // The maximal sentiment of the news in range [-1,1]. (optional)
NSString* earliestPublishDate = 2022-04-22 16:12:35; // The news must have been published after this date. (optional)
NSString* latestPublishDate = 2022-04-22 16:12:35; // The news must have been published before this date. (optional)
NSString* varNewsSources = https://www.bbc.co.uk; // A comma-separated list of news sources from which the news should originate. (optional)
NSString* authors = John Doe; // A comma-separated list of author names. Only news from any of the given authors will be returned. (optional)
NSString* entities = ORG:Tesla; // Filter news by entities (see semantic types). (optional)
NSString* locationFilter = 51.050407, 13.737262, 20; // Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\". Radius must be between 1 and 100 kilometers. (optional)
NSString* sort = publish-time; // The sorting criteria (publish-time or sentiment). (optional)
NSString* sortDirection = ASC; // Whether to sort ascending or descending (ASC or DESC). (optional)
NSNumber* offset = 0; // The number of news to skip in range [0,10000] (optional)
NSNumber* number = 10; // The number of news to return in range [1,100] (optional)

OAINewsApi*apiInstance = [[OAINewsApi alloc] init];

// Search News
[apiInstance searchNewsWithText:text
              sourceCountries:sourceCountries
              language:language
              minSentiment:minSentiment
              maxSentiment:maxSentiment
              earliestPublishDate:earliestPublishDate
              latestPublishDate:latestPublishDate
              varNewsSources:varNewsSources
              authors:authors
              entities:entities
              locationFilter:locationFilter
              sort:sort
              sortDirection:sortDirection
              offset:offset
              number:number
          completionHandler: ^(OAISearchNews200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAINewsApi->searchNews: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **NSString***| The text to match in the news content (at least 3 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford | [optional] 
 **sourceCountries** | **NSString***| A comma-separated list of ISO 3166 country codes from which the news should originate. | [optional] 
 **language** | **NSString***| The ISO 6391 language code of the news. | [optional] 
 **minSentiment** | **NSNumber***| The minimal sentiment of the news in range [-1,1]. | [optional] 
 **maxSentiment** | **NSNumber***| The maximal sentiment of the news in range [-1,1]. | [optional] 
 **earliestPublishDate** | **NSString***| The news must have been published after this date. | [optional] 
 **latestPublishDate** | **NSString***| The news must have been published before this date. | [optional] 
 **varNewsSources** | **NSString***| A comma-separated list of news sources from which the news should originate. | [optional] 
 **authors** | **NSString***| A comma-separated list of author names. Only news from any of the given authors will be returned. | [optional] 
 **entities** | **NSString***| Filter news by entities (see semantic types). | [optional] 
 **locationFilter** | **NSString***| Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;. Radius must be between 1 and 100 kilometers. | [optional] 
 **sort** | **NSString***| The sorting criteria (publish-time or sentiment). | [optional] 
 **sortDirection** | **NSString***| Whether to sort ascending or descending (ASC or DESC). | [optional] 
 **offset** | **NSNumber***| The number of news to skip in range [0,10000] | [optional] 
 **number** | **NSNumber***| The number of news to return in range [1,100] | [optional] 

### Return type

[**OAISearchNews200Response***](OAISearchNews200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **topNews**
```objc
-(NSURLSessionTask*) topNewsWithSourceCountry: (NSString*) sourceCountry
    language: (NSString*) language
    date: (NSString*) date
    headlinesOnly: (NSNumber*) headlinesOnly
        completionHandler: (void (^)(OAITopNews200Response* output, NSError* error)) handler;
```

Top News

Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];

// Configure API key authorization: (authentication scheme: headerApiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* sourceCountry = us; // The ISO 3166 country code of the country for which top news should be retrieved.
NSString* language = en; // The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
NSString* date = 2024-05-30; // The date for which the top news should be retrieved. If no date is given, the current day is assumed. (optional)
NSNumber* headlinesOnly = false; // Whether to only return basic information such as id, title, and url of the news. (optional)

OAINewsApi*apiInstance = [[OAINewsApi alloc] init];

// Top News
[apiInstance topNewsWithSourceCountry:sourceCountry
              language:language
              date:date
              headlinesOnly:headlinesOnly
          completionHandler: ^(OAITopNews200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAINewsApi->topNews: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceCountry** | **NSString***| The ISO 3166 country code of the country for which top news should be retrieved. | 
 **language** | **NSString***| The ISO 6391 language code of the top news. The language must be one spoken in the source-country. | 
 **date** | **NSString***| The date for which the top news should be retrieved. If no date is given, the current day is assumed. | [optional] 
 **headlinesOnly** | **NSNumber***| Whether to only return basic information such as id, title, and url of the news. | [optional] 

### Return type

[**OAITopNews200Response***](OAITopNews200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

