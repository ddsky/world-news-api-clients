/**
 * World News API
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@worldnewsapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.worldnewsapi;

import com.worldnewsapi.client.ApiInvoker;
import com.worldnewsapi.client.ApiException;
import com.worldnewsapi.client.Pair;

import com.worldnewsapi.client.model.*;

import java.util.*;

import com.android.volley.Response;
import com.android.volley.VolleyError;

import com.worldnewsapi.client.model.InlineResponse200;
import com.worldnewsapi.client.model.InlineResponse2001;
import com.worldnewsapi.client.model.InlineResponse2002;

import org.apache.http.HttpEntity;
import org.apache.http.entity.mime.MultipartEntityBuilder;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeoutException;

public class NewsApi {
  String basePath = "https://api.worldnewsapi.com";
  ApiInvoker apiInvoker = ApiInvoker.getInstance();

  public void addHeader(String key, String value) {
    getInvoker().addDefaultHeader(key, value);
  }

  public ApiInvoker getInvoker() {
    return apiInvoker;
  }

  public void setBasePath(String basePath) {
    this.basePath = basePath;
  }

  public String getBasePath() {
    return basePath;
  }

  /**
  * Extract News
  * Extract a news entry from a news site.
   * @param url The url of the news.
   * @param analyze Whether to analyze the news (extract entities etc.)
   * @return InlineResponse2001
  */
  public InlineResponse2001 extractNews (String url, Boolean analyze) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;
    // verify the required parameter 'url' is set
    if (url == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'url' when calling extractNews",
        new ApiException(400, "Missing the required parameter 'url' when calling extractNews"));
    }
    // verify the required parameter 'analyze' is set
    if (analyze == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'analyze' when calling extractNews",
        new ApiException(400, "Missing the required parameter 'analyze' when calling extractNews"));
    }

    // create path and map variables
    String path = "/extract-news";

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    queryParams.addAll(ApiInvoker.parameterToPairs("", "url", url));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "analyze", analyze));
    String[] contentTypes = {
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
    }

    String[] authNames = new String[] { "apiKey", "headerApiKey" };

    try {
      String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
      if (localVarResponse != null) {
         return (InlineResponse2001) ApiInvoker.deserialize(localVarResponse, "", InlineResponse2001.class);
      } else {
         return null;
      }
    } catch (ApiException ex) {
       throw ex;
    } catch (InterruptedException ex) {
       throw ex;
    } catch (ExecutionException ex) {
      if (ex.getCause() instanceof VolleyError) {
        VolleyError volleyError = (VolleyError)ex.getCause();
        if (volleyError.networkResponse != null) {
          throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
        }
      }
      throw ex;
    } catch (TimeoutException ex) {
      throw ex;
    }
  }

      /**
   * Extract News
   * Extract a news entry from a news site.
   * @param url The url of the news.   * @param analyze Whether to analyze the news (extract entities etc.)
  */
  public void extractNews (String url, Boolean analyze, final Response.Listener<InlineResponse2001> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;

    // verify the required parameter 'url' is set
    if (url == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'url' when calling extractNews",
        new ApiException(400, "Missing the required parameter 'url' when calling extractNews"));
    }
    // verify the required parameter 'analyze' is set
    if (analyze == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'analyze' when calling extractNews",
        new ApiException(400, "Missing the required parameter 'analyze' when calling extractNews"));
    }

    // create path and map variables
    String path = "/extract-news".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();

    queryParams.addAll(ApiInvoker.parameterToPairs("", "url", url));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "analyze", analyze));


    String[] contentTypes = {
      
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

    String[] authNames = new String[] { "apiKey", "headerApiKey" };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((InlineResponse2001) ApiInvoker.deserialize(localVarResponse,  "", InlineResponse2001.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
  /**
  * Extract News
  * Extract a news links from a news website. 
   * @param url The url from which links should be extracted.
   * @param apiKey Your API key.
   * @param prefix The prefix the news links must start with.
   * @param subDomain Whether to include links to news on sub-domains.
   * @return Object
  */
  public Object extractNews_1 (String url, String apiKey, String prefix, Boolean subDomain) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;
    // verify the required parameter 'url' is set
    if (url == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'url' when calling extractNews_1",
        new ApiException(400, "Missing the required parameter 'url' when calling extractNews_1"));
    }
    // verify the required parameter 'apiKey' is set
    if (apiKey == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'apiKey' when calling extractNews_1",
        new ApiException(400, "Missing the required parameter 'apiKey' when calling extractNews_1"));
    }

    // create path and map variables
    String path = "/extract-news-links";

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    queryParams.addAll(ApiInvoker.parameterToPairs("", "url", url));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "prefix", prefix));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "sub-domain", subDomain));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "api-key", apiKey));
    String[] contentTypes = {
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
    }

    String[] authNames = new String[] { "apiKey", "headerApiKey" };

    try {
      String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
      if (localVarResponse != null) {
         return (Object) ApiInvoker.deserialize(localVarResponse, "", Object.class);
      } else {
         return null;
      }
    } catch (ApiException ex) {
       throw ex;
    } catch (InterruptedException ex) {
       throw ex;
    } catch (ExecutionException ex) {
      if (ex.getCause() instanceof VolleyError) {
        VolleyError volleyError = (VolleyError)ex.getCause();
        if (volleyError.networkResponse != null) {
          throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
        }
      }
      throw ex;
    } catch (TimeoutException ex) {
      throw ex;
    }
  }

      /**
   * Extract News
   * Extract a news links from a news website. 
   * @param url The url from which links should be extracted.   * @param apiKey Your API key.   * @param prefix The prefix the news links must start with.   * @param subDomain Whether to include links to news on sub-domains.
  */
  public void extractNews_1 (String url, String apiKey, String prefix, Boolean subDomain, final Response.Listener<Object> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;

    // verify the required parameter 'url' is set
    if (url == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'url' when calling extractNews_1",
        new ApiException(400, "Missing the required parameter 'url' when calling extractNews_1"));
    }
    // verify the required parameter 'apiKey' is set
    if (apiKey == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'apiKey' when calling extractNews_1",
        new ApiException(400, "Missing the required parameter 'apiKey' when calling extractNews_1"));
    }

    // create path and map variables
    String path = "/extract-news-links".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();

    queryParams.addAll(ApiInvoker.parameterToPairs("", "url", url));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "prefix", prefix));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "sub-domain", subDomain));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "api-key", apiKey));


    String[] contentTypes = {
      
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

    String[] authNames = new String[] { "apiKey", "headerApiKey" };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((Object) ApiInvoker.deserialize(localVarResponse,  "", Object.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
  /**
  * Get Geo Coordinates
  * Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country.
   * @param location The address or name of the location, e.g. Tokyo, Japan.
   * @return InlineResponse2002
  */
  public InlineResponse2002 geoCoordinates (String location) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;
    // verify the required parameter 'location' is set
    if (location == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'location' when calling geoCoordinates",
        new ApiException(400, "Missing the required parameter 'location' when calling geoCoordinates"));
    }

    // create path and map variables
    String path = "/geo-coordinates";

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    queryParams.addAll(ApiInvoker.parameterToPairs("", "location", location));
    String[] contentTypes = {
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
    }

    String[] authNames = new String[] { "apiKey", "headerApiKey" };

    try {
      String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
      if (localVarResponse != null) {
         return (InlineResponse2002) ApiInvoker.deserialize(localVarResponse, "", InlineResponse2002.class);
      } else {
         return null;
      }
    } catch (ApiException ex) {
       throw ex;
    } catch (InterruptedException ex) {
       throw ex;
    } catch (ExecutionException ex) {
      if (ex.getCause() instanceof VolleyError) {
        VolleyError volleyError = (VolleyError)ex.getCause();
        if (volleyError.networkResponse != null) {
          throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
        }
      }
      throw ex;
    } catch (TimeoutException ex) {
      throw ex;
    }
  }

      /**
   * Get Geo Coordinates
   * Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country.
   * @param location The address or name of the location, e.g. Tokyo, Japan.
  */
  public void geoCoordinates (String location, final Response.Listener<InlineResponse2002> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;

    // verify the required parameter 'location' is set
    if (location == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'location' when calling geoCoordinates",
        new ApiException(400, "Missing the required parameter 'location' when calling geoCoordinates"));
    }

    // create path and map variables
    String path = "/geo-coordinates".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();

    queryParams.addAll(ApiInvoker.parameterToPairs("", "location", location));


    String[] contentTypes = {
      
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

    String[] authNames = new String[] { "apiKey", "headerApiKey" };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((InlineResponse2002) ApiInvoker.deserialize(localVarResponse,  "", InlineResponse2002.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
  /**
  * News Website to RSS Feed
  * Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page. 
   * @param url The url from which links should be extracted.
   * @param apiKey Your API key.
   * @param extractNews Whether extract news and add information such as description, publish date, and image to each item.
   * @return Object
  */
  public Object newsWebsiteToRSSFeed (String url, String apiKey, Boolean extractNews) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;
    // verify the required parameter 'url' is set
    if (url == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'url' when calling newsWebsiteToRSSFeed",
        new ApiException(400, "Missing the required parameter 'url' when calling newsWebsiteToRSSFeed"));
    }
    // verify the required parameter 'apiKey' is set
    if (apiKey == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'apiKey' when calling newsWebsiteToRSSFeed",
        new ApiException(400, "Missing the required parameter 'apiKey' when calling newsWebsiteToRSSFeed"));
    }

    // create path and map variables
    String path = "/feed.rss";

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    queryParams.addAll(ApiInvoker.parameterToPairs("", "url", url));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "extract-news", extractNews));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "api-key", apiKey));
    String[] contentTypes = {
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
    }

    String[] authNames = new String[] { "apiKey", "headerApiKey" };

    try {
      String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
      if (localVarResponse != null) {
         return (Object) ApiInvoker.deserialize(localVarResponse, "", Object.class);
      } else {
         return null;
      }
    } catch (ApiException ex) {
       throw ex;
    } catch (InterruptedException ex) {
       throw ex;
    } catch (ExecutionException ex) {
      if (ex.getCause() instanceof VolleyError) {
        VolleyError volleyError = (VolleyError)ex.getCause();
        if (volleyError.networkResponse != null) {
          throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
        }
      }
      throw ex;
    } catch (TimeoutException ex) {
      throw ex;
    }
  }

      /**
   * News Website to RSS Feed
   * Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page. 
   * @param url The url from which links should be extracted.   * @param apiKey Your API key.   * @param extractNews Whether extract news and add information such as description, publish date, and image to each item.
  */
  public void newsWebsiteToRSSFeed (String url, String apiKey, Boolean extractNews, final Response.Listener<Object> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;

    // verify the required parameter 'url' is set
    if (url == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'url' when calling newsWebsiteToRSSFeed",
        new ApiException(400, "Missing the required parameter 'url' when calling newsWebsiteToRSSFeed"));
    }
    // verify the required parameter 'apiKey' is set
    if (apiKey == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'apiKey' when calling newsWebsiteToRSSFeed",
        new ApiException(400, "Missing the required parameter 'apiKey' when calling newsWebsiteToRSSFeed"));
    }

    // create path and map variables
    String path = "/feed.rss".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();

    queryParams.addAll(ApiInvoker.parameterToPairs("", "url", url));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "extract-news", extractNews));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "api-key", apiKey));


    String[] contentTypes = {
      
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

    String[] authNames = new String[] { "apiKey", "headerApiKey" };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((Object) ApiInvoker.deserialize(localVarResponse,  "", Object.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
  /**
  * Search News
  * Search for news.
   * @param text The text to match in the news content.
   * @param sourceCountries A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us.
   * @param language The ISO 6391 language code of the news, e.g. \&quot;en\&quot; for English.
   * @param minSentiment The minimal sentiment of the news in range [-1,1].
   * @param maxSentiment The maximal sentiment of the news in range [-1,1].
   * @param earliestPublishDate The news must have been published after this date.
   * @param latestPublishDate The news must have been published before this date.
   * @param newsSources A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk
   * @param authors A comma-separated list of author names. Only news from any of the given authors will be returned.
   * @param entities Filter news by entities, e.g. ORG:Tesla.
   * @param locationFilter Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;, e.g. 51.050407, 13.737262, 100
   * @param offset The number of news to skip in range [0,1000]
   * @param number The number of news to return in range [1,100]
   * @param sort The sorting criteria.
   * @param sortDirection Whether to sort ascending or descending.
   * @return InlineResponse200
  */
  public InlineResponse200 searchNews (String text, String sourceCountries, String language, Double minSentiment, Double maxSentiment, String earliestPublishDate, String latestPublishDate, String newsSources, String authors, String entities, String locationFilter, Integer offset, Integer number, String sort, String sortDirection) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;

    // create path and map variables
    String path = "/search-news";

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    queryParams.addAll(ApiInvoker.parameterToPairs("", "text", text));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "source-countries", sourceCountries));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "language", language));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "min-sentiment", minSentiment));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "max-sentiment", maxSentiment));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "earliest-publish-date", earliestPublishDate));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "latest-publish-date", latestPublishDate));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "news-sources", newsSources));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "authors", authors));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "entities", entities));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "location-filter", locationFilter));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "offset", offset));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "number", number));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "sort", sort));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "sort-direction", sortDirection));
    String[] contentTypes = {
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
    }

    String[] authNames = new String[] { "apiKey", "headerApiKey" };

    try {
      String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
      if (localVarResponse != null) {
         return (InlineResponse200) ApiInvoker.deserialize(localVarResponse, "", InlineResponse200.class);
      } else {
         return null;
      }
    } catch (ApiException ex) {
       throw ex;
    } catch (InterruptedException ex) {
       throw ex;
    } catch (ExecutionException ex) {
      if (ex.getCause() instanceof VolleyError) {
        VolleyError volleyError = (VolleyError)ex.getCause();
        if (volleyError.networkResponse != null) {
          throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
        }
      }
      throw ex;
    } catch (TimeoutException ex) {
      throw ex;
    }
  }

      /**
   * Search News
   * Search for news.
   * @param text The text to match in the news content.   * @param sourceCountries A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us.   * @param language The ISO 6391 language code of the news, e.g. \&quot;en\&quot; for English.   * @param minSentiment The minimal sentiment of the news in range [-1,1].   * @param maxSentiment The maximal sentiment of the news in range [-1,1].   * @param earliestPublishDate The news must have been published after this date.   * @param latestPublishDate The news must have been published before this date.   * @param newsSources A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk   * @param authors A comma-separated list of author names. Only news from any of the given authors will be returned.   * @param entities Filter news by entities, e.g. ORG:Tesla.   * @param locationFilter Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;, e.g. 51.050407, 13.737262, 100   * @param offset The number of news to skip in range [0,1000]   * @param number The number of news to return in range [1,100]   * @param sort The sorting criteria.   * @param sortDirection Whether to sort ascending or descending.
  */
  public void searchNews (String text, String sourceCountries, String language, Double minSentiment, Double maxSentiment, String earliestPublishDate, String latestPublishDate, String newsSources, String authors, String entities, String locationFilter, Integer offset, Integer number, String sort, String sortDirection, final Response.Listener<InlineResponse200> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;


    // create path and map variables
    String path = "/search-news".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();

    queryParams.addAll(ApiInvoker.parameterToPairs("", "text", text));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "source-countries", sourceCountries));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "language", language));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "min-sentiment", minSentiment));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "max-sentiment", maxSentiment));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "earliest-publish-date", earliestPublishDate));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "latest-publish-date", latestPublishDate));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "news-sources", newsSources));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "authors", authors));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "entities", entities));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "location-filter", locationFilter));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "offset", offset));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "number", number));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "sort", sort));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "sort-direction", sortDirection));


    String[] contentTypes = {
      
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

    String[] authNames = new String[] { "apiKey", "headerApiKey" };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((InlineResponse200) ApiInvoker.deserialize(localVarResponse,  "", InlineResponse200.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
}
