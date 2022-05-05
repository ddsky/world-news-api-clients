# org.openapitools.client - Kotlin client library for World News API

## Requires

* Kotlin 1.4.30
* Gradle 6.8.3

## Build

First, create the gradle wrapper script:

```
gradle wrapper
```

Then, run:

```
./gradlew check assemble
```

This runs all tests and packages the library.

## Features/Implementation Notes

* Supports JSON inputs/outputs, File inputs, and Form inputs.
* Supports collection formats for query parameters: csv, tsv, ssv, pipes.
* Some Kotlin and Java types are fully qualified to avoid conflicts with types defined in OpenAPI definitions.
* Implementation of ApiClient is intended to reduce method counts, specifically to benefit Android targets.

<a name="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *https://api.worldnewsapi.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*NewsApi* | [**extractNews**](docs/NewsApi.md#extractnews) | **GET** /extract-news | Extract News
*NewsApi* | [**geoCoordinates**](docs/NewsApi.md#geocoordinates) | **GET** /geo-coordinates | Get Geo Coordinates
*NewsApi* | [**searchNews**](docs/NewsApi.md#searchnews) | **GET** /search-news | Search News


<a name="documentation-for-models"></a>
## Documentation for Models

 - [com.worldnewsapi.client.model.InlineResponse200](docs/InlineResponse200.md)
 - [com.worldnewsapi.client.model.InlineResponse2001](docs/InlineResponse2001.md)
 - [com.worldnewsapi.client.model.InlineResponse2002](docs/InlineResponse2002.md)
 - [com.worldnewsapi.client.model.InlineResponse200News](docs/InlineResponse200News.md)
 - [com.worldnewsapi.client.model.News](docs/News.md)


<a name="documentation-for-authorization"></a>
## Documentation for Authorization

<a name="apiKey"></a>
### apiKey

- **Type**: API key
- **API key parameter name**: api-key
- **Location**: URL query string

