# java-client

World News API
- API version: 1.0
  - Build date: 2022-05-05T15:22:16.944+02:00[Europe/Berlin]

The world's news wrapped into a single API.


*Automatically generated by the [OpenAPI Generator](https://openapi-generator.tech)*


## Requirements

Building the API client library requires:
1. Java 1.8+
2. Maven (3.8.3+)/Gradle (7.2+)

## Installation

To install the API client library to your local Maven repository, simply execute:

```shell
mvn clean install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn clean deploy
```

Refer to the [OSSRH Guide](http://central.sonatype.org/pages/ossrh-guide.html) for more information.

### Maven users

Add this dependency to your project's POM:

```xml
<dependency>
  <groupId>com.worldnewsapi</groupId>
  <artifactId>java-client</artifactId>
  <version>1.0</version>
  <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your project's build file:

```groovy
  repositories {
    mavenCentral()     // Needed if the 'java-client' jar has been published to maven central.
    mavenLocal()       // Needed if the 'java-client' jar has been published to the local maven repo.
  }

  dependencies {
     implementation "com.worldnewsapi:java-client:1.0"
  }
```

### Others

At first generate the JAR by executing:

```shell
mvn clean package
```

Then manually install the following JARs:

* `target/java-client-1.0.jar`
* `target/lib/*.jar`

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```java

// Import classes:
import com.worldnewsapi.client.ApiClient;
import com.worldnewsapi.client.ApiException;
import com.worldnewsapi.client.Configuration;
import com.worldnewsapi.client.auth.*;
import com.worldnewsapi.client.models.*;
import com.worldnewsapi.NewsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.worldnewsapi.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    NewsApi apiInstance = new NewsApi(defaultClient);
    String url = "https://www.bbc.com/news/world-us-canada-59340789"; // String | The url of the news.
    Boolean analyze = false; // Boolean | Whether to analyze the news (extract entities etc.)
    try {
      InlineResponse2001 result = apiInstance.extractNews(url, analyze);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NewsApi#extractNews");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}

```

## Documentation for API Endpoints

All URIs are relative to *https://api.worldnewsapi.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*NewsApi* | [**extractNews**](docs/NewsApi.md#extractNews) | **GET** /extract-news | Extract News
*NewsApi* | [**geoCoordinates**](docs/NewsApi.md#geoCoordinates) | **GET** /geo-coordinates | Get Geo Coordinates
*NewsApi* | [**searchNews**](docs/NewsApi.md#searchNews) | **GET** /search-news | Search News


## Documentation for Models

 - [InlineResponse200](docs/InlineResponse200.md)
 - [InlineResponse2001](docs/InlineResponse2001.md)
 - [InlineResponse2002](docs/InlineResponse2002.md)
 - [InlineResponse200News](docs/InlineResponse200News.md)
 - [News](docs/News.md)


## Documentation for Authorization

Authentication schemes defined for the API:
### apiKey

- **Type**: API key
- **API key parameter name**: api-key
- **Location**: URL query string


## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issues.

## Author

mail@worldnewsapi.com

