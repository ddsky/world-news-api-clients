# OpenAPIClient

The world's news wrapped into a single API.

This ObjC package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0
- Package version: 1.0
- Build package: org.openapitools.codegen.languages.ObjcClientCodegen

## Requirements

The SDK requires [**ARC (Automatic Reference Counting)**](http://stackoverflow.com/questions/7778356/how-to-enable-disable-automatic-reference-counting) to be enabled in the Xcode project.

## Installation & Usage
### Install from Github using [CocoaPods](https://cocoapods.org/)

Add the following to the Podfile:

```ruby
pod 'OpenAPIClient', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'
```

To specify a particular branch, append `, :branch => 'branch-name-here'`

To specify a particular commit, append `, :commit => '11aa22'`

### Install from local path using [CocoaPods](https://cocoapods.org/)

Put the SDK under your project folder (e.g. /path/to/objc_project/Vendor/OpenAPIClient) and then add the following to the Podfile:

```ruby
pod 'OpenAPIClient', :path => 'Vendor/OpenAPIClient'
```

### Usage

Import the following:

```objc
#import <OpenAPIClient/OAIApiClient.h>
#import <OpenAPIClient/OAIDefaultConfiguration.h>
// load models
#import <OpenAPIClient/OAIInlineResponse200.h>
#import <OpenAPIClient/OAIInlineResponse2001.h>
#import <OpenAPIClient/OAIInlineResponse2002.h>
#import <OpenAPIClient/OAIInlineResponse200News.h>
#import <OpenAPIClient/OAINews.h>
// load API classes for accessing endpoints
#import <OpenAPIClient/OAINewsApi.h>

```

## Recommendation

It's recommended to create an instance of ApiClient per thread in a multi-threaded environment to avoid any potential issues.

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```objc

OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];


NSString* *url = https://www.bbc.com/news/world-us-canada-59340789; // The url of the news.
NSNumber* *analyze = true; // Whether to analyze the news (extract entities etc.) (default to @(NO))

OAINewsApi *apiInstance = [[OAINewsApi alloc] init];

// Extract News
[apiInstance extractNewsWithUrl:url
    analyze:analyze
              completionHandler: ^(OAIInlineResponse2001* output, NSError* error) {
                            if (output) {
                                NSLog(@"%@", output);
                            }
                            if (error) {
                                NSLog(@"Error: %@", error);
                            }
                        }];

```

## Documentation for API Endpoints

All URIs are relative to *https://api.worldnewsapi.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OAINewsApi* | [**extractNews**](docs/OAINewsApi.md#extractnews) | **GET** /extract-news | Extract News
*OAINewsApi* | [**geoCoordinates**](docs/OAINewsApi.md#geocoordinates) | **GET** /geo-coordinates | Get Geo Coordinates
*OAINewsApi* | [**searchNews**](docs/OAINewsApi.md#searchnews) | **GET** /search-news | Search News


## Documentation For Models

 - [OAIInlineResponse200](docs/OAIInlineResponse200.md)
 - [OAIInlineResponse2001](docs/OAIInlineResponse2001.md)
 - [OAIInlineResponse2002](docs/OAIInlineResponse2002.md)
 - [OAIInlineResponse200News](docs/OAIInlineResponse200News.md)
 - [OAINews](docs/OAINews.md)


## Documentation For Authorization


## apiKey

- **Type**: API key
- **API key parameter name**: api-key
- **Location**: URL query string


## Author

mail@worldnewsapi.com
