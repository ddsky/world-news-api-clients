# OAINewsApi

All URIs are relative to *https://api.worldnewsapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**extractNews**](OAINewsApi.md#extractnews) | **GET** /extract-news | Extract News
[**geoCoordinates**](OAINewsApi.md#geocoordinates) | **GET** /geo-coordinates | Get Geo Coordinates
[**searchNews**](OAINewsApi.md#searchnews) | **GET** /search-news | Search News


# **extractNews**
```objc
-(NSURLSessionTask*) extractNewsWithUrl: (NSString*) url
    analyze: (NSNumber*) analyze
        completionHandler: (void (^)(OAIInlineResponse2001* output, NSError* error)) handler;
```

Extract News

Extract a news entry from a news site.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];


NSString* url = https://www.bbc.com/news/world-us-canada-59340789; // The url of the news.
NSNumber* analyze = true; // Whether to analyze the news (extract entities etc.) (default to @(NO))

OAINewsApi*apiInstance = [[OAINewsApi alloc] init];

// Extract News
[apiInstance extractNewsWithUrl:url
              analyze:analyze
          completionHandler: ^(OAIInlineResponse2001* output, NSError* error) {
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
 **analyze** | **NSNumber***| Whether to analyze the news (extract entities etc.) | [default to @(NO)]

### Return type

[**OAIInlineResponse2001***](OAIInlineResponse2001.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **geoCoordinates**
```objc
-(NSURLSessionTask*) geoCoordinatesWithLocation: (NSString*) location
        completionHandler: (void (^)(OAIInlineResponse2002* output, NSError* error)) handler;
```

Get Geo Coordinates

Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];


NSString* location = Tokyo, Japan; // The address or name of the location, e.g. Tokyo, Japan.

OAINewsApi*apiInstance = [[OAINewsApi alloc] init];

// Get Geo Coordinates
[apiInstance geoCoordinatesWithLocation:location
          completionHandler: ^(OAIInlineResponse2002* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAINewsApi->geoCoordinates: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location** | **NSString***| The address or name of the location, e.g. Tokyo, Japan. | 

### Return type

[**OAIInlineResponse2002***](OAIInlineResponse2002.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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
    offset: (NSNumber*) offset
    number: (NSNumber*) number
    sort: (NSString*) sort
    sortDirection: (NSString*) sortDirection
        completionHandler: (void (^)(OAIInlineResponse200* output, NSError* error)) handler;
```

Search News

Search for news.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];


NSString* text = hurricane; // The text to match in the news content. (optional)
NSString* sourceCountries = gb,us; // A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us. (optional)
NSString* language = en; // The ISO 6391 language code of the news, e.g. \"en\" for English. (optional)
NSNumber* minSentiment = -0.8; // The minimal sentiment of the news in range [-1,1]. (optional)
NSNumber* maxSentiment = 0.8; // The maximal sentiment of the news in range [-1,1]. (optional)
NSString* earliestPublishDate = 2022-04-22 16:12:35; // The news must have been published after this date. (optional)
NSString* latestPublishDate = 2022-05-23 24:16:27; // The news must have been published before this date. (optional)
NSString* varNewsSources = https://www.bbc.co.uk; // A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk (optional)
NSString* authors = John Doe; // A comma-separated list of author names. Only news from any of the given authors will be returned. (optional)
NSString* entities = ORG:Tesla; // Filter news by entities, e.g. ORG:Tesla. (optional)
NSString* locationFilter = 51.050407,13.737262,100; // Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\", e.g. 51.050407, 13.737262, 100 (optional)
NSNumber* offset = 10; // The number of news to skip in range [0,1000] (optional)
NSNumber* number = 1; // The number of news to return in range [1,100] (optional)
NSString* sort = publish-time; // The sorting criteria. (optional)
NSString* sortDirection = desc; // Whether to sort ascending or descending. (optional)

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
              offset:offset
              number:number
              sort:sort
              sortDirection:sortDirection
          completionHandler: ^(OAIInlineResponse200* output, NSError* error) {
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
 **text** | **NSString***| The text to match in the news content. | [optional] 
 **sourceCountries** | **NSString***| A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us. | [optional] 
 **language** | **NSString***| The ISO 6391 language code of the news, e.g. \&quot;en\&quot; for English. | [optional] 
 **minSentiment** | **NSNumber***| The minimal sentiment of the news in range [-1,1]. | [optional] 
 **maxSentiment** | **NSNumber***| The maximal sentiment of the news in range [-1,1]. | [optional] 
 **earliestPublishDate** | **NSString***| The news must have been published after this date. | [optional] 
 **latestPublishDate** | **NSString***| The news must have been published before this date. | [optional] 
 **varNewsSources** | **NSString***| A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk | [optional] 
 **authors** | **NSString***| A comma-separated list of author names. Only news from any of the given authors will be returned. | [optional] 
 **entities** | **NSString***| Filter news by entities, e.g. ORG:Tesla. | [optional] 
 **locationFilter** | **NSString***| Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;, e.g. 51.050407, 13.737262, 100 | [optional] 
 **offset** | **NSNumber***| The number of news to skip in range [0,1000] | [optional] 
 **number** | **NSNumber***| The number of news to return in range [1,100] | [optional] 
 **sort** | **NSString***| The sorting criteria. | [optional] 
 **sortDirection** | **NSString***| Whether to sort ascending or descending. | [optional] 

### Return type

[**OAIInlineResponse200***](OAIInlineResponse200.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

