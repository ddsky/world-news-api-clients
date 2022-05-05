using System;
using System.Collections.Generic;
using RestSharp;
using Org.OpenAPITools.Client;
using com.worldnewsapi.client.model;

namespace com.worldnewsapi
{
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface INewsApi
    {
        /// <summary>
        /// Extract News Extract a news entry from a news site.
        /// </summary>
        /// <param name="url">The url of the news.</param>
        /// <param name="analyze">Whether to analyze the news (extract entities etc.)</param>
        /// <returns>InlineResponse2001</returns>
        InlineResponse2001 ExtractNews (string url, bool? analyze);
        /// <summary>
        /// Get Geo Coordinates Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country.
        /// </summary>
        /// <param name="location">The address or name of the location, e.g. Tokyo, Japan.</param>
        /// <returns>InlineResponse2002</returns>
        InlineResponse2002 GeoCoordinates (string location);
        /// <summary>
        /// Search News Search for news.
        /// </summary>
        /// <param name="text">The text to match in the news content.</param>
        /// <param name="sourceCountries">A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us.</param>
        /// <param name="language">The ISO 6391 language code of the news, e.g. \&quot;en\&quot; for English.</param>
        /// <param name="minSentiment">The minimal sentiment of the news in range [-1,1].</param>
        /// <param name="maxSentiment">The maximal sentiment of the news in range [-1,1].</param>
        /// <param name="earliestPublishDate">The news must have been published after this date.</param>
        /// <param name="latestPublishDate">The news must have been published before this date.</param>
        /// <param name="newsSources">A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk</param>
        /// <param name="authors">A comma-separated list of author names. Only news from any of the given authors will be returned.</param>
        /// <param name="entities">Filter news by entities, e.g. ORG:Tesla.</param>
        /// <param name="locationFilter">Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;, e.g. 51.050407, 13.737262, 100</param>
        /// <param name="offset">The number of news to skip in range [0,1000]</param>
        /// <param name="number">The number of news to return in range [1,100]</param>
        /// <param name="sort">The sorting criteria.</param>
        /// <param name="sortDirection">Whether to sort ascending or descending.</param>
        /// <returns>InlineResponse200</returns>
        InlineResponse200 SearchNews (string text, string sourceCountries, string language, double? minSentiment, double? maxSentiment, string earliestPublishDate, string latestPublishDate, string newsSources, string authors, string entities, string locationFilter, int? offset, int? number, string sort, string sortDirection);
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class NewsApi : INewsApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="NewsApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public NewsApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient;
            else
                this.ApiClient = apiClient;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="NewsApi"/> class.
        /// </summary>
        /// <returns></returns>
        public NewsApi(String basePath)
        {
            this.ApiClient = new ApiClient(basePath);
        }

        /// <summary>
        /// Sets the base path of the API client.
        /// </summary>
        /// <param name="basePath">The base path</param>
        /// <value>The base path</value>
        public void SetBasePath(String basePath)
        {
            this.ApiClient.BasePath = basePath;
        }

        /// <summary>
        /// Gets the base path of the API client.
        /// </summary>
        /// <param name="basePath">The base path</param>
        /// <value>The base path</value>
        public String GetBasePath(String basePath)
        {
            return this.ApiClient.BasePath;
        }

        /// <summary>
        /// Gets or sets the API client.
        /// </summary>
        /// <value>An instance of the ApiClient</value>
        public ApiClient ApiClient {get; set;}

        /// <summary>
        /// Extract News Extract a news entry from a news site.
        /// </summary>
        /// <param name="url">The url of the news.</param>
        /// <param name="analyze">Whether to analyze the news (extract entities etc.)</param>
        /// <returns>InlineResponse2001</returns>
        public InlineResponse2001 ExtractNews (string url, bool? analyze)
        {
            
            // verify the required parameter 'url' is set
            if (url == null) throw new ApiException(400, "Missing required parameter 'url' when calling ExtractNews");
            
            // verify the required parameter 'analyze' is set
            if (analyze == null) throw new ApiException(400, "Missing required parameter 'analyze' when calling ExtractNews");
            

            var path = "/extract-news";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (url != null) queryParams.Add("url", ApiClient.ParameterToString(url)); // query parameter
 if (analyze != null) queryParams.Add("analyze", ApiClient.ParameterToString(analyze)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ExtractNews: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ExtractNews: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse2001) ApiClient.Deserialize(response.Content, typeof(InlineResponse2001), response.Headers);
        }

        /// <summary>
        /// Get Geo Coordinates Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country.
        /// </summary>
        /// <param name="location">The address or name of the location, e.g. Tokyo, Japan.</param>
        /// <returns>InlineResponse2002</returns>
        public InlineResponse2002 GeoCoordinates (string location)
        {
            
            // verify the required parameter 'location' is set
            if (location == null) throw new ApiException(400, "Missing required parameter 'location' when calling GeoCoordinates");
            

            var path = "/geo-coordinates";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (location != null) queryParams.Add("location", ApiClient.ParameterToString(location)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GeoCoordinates: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GeoCoordinates: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse2002) ApiClient.Deserialize(response.Content, typeof(InlineResponse2002), response.Headers);
        }

        /// <summary>
        /// Search News Search for news.
        /// </summary>
        /// <param name="text">The text to match in the news content.</param>
        /// <param name="sourceCountries">A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us.</param>
        /// <param name="language">The ISO 6391 language code of the news, e.g. \&quot;en\&quot; for English.</param>
        /// <param name="minSentiment">The minimal sentiment of the news in range [-1,1].</param>
        /// <param name="maxSentiment">The maximal sentiment of the news in range [-1,1].</param>
        /// <param name="earliestPublishDate">The news must have been published after this date.</param>
        /// <param name="latestPublishDate">The news must have been published before this date.</param>
        /// <param name="newsSources">A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk</param>
        /// <param name="authors">A comma-separated list of author names. Only news from any of the given authors will be returned.</param>
        /// <param name="entities">Filter news by entities, e.g. ORG:Tesla.</param>
        /// <param name="locationFilter">Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;, e.g. 51.050407, 13.737262, 100</param>
        /// <param name="offset">The number of news to skip in range [0,1000]</param>
        /// <param name="number">The number of news to return in range [1,100]</param>
        /// <param name="sort">The sorting criteria.</param>
        /// <param name="sortDirection">Whether to sort ascending or descending.</param>
        /// <returns>InlineResponse200</returns>
        public InlineResponse200 SearchNews (string text, string sourceCountries, string language, double? minSentiment, double? maxSentiment, string earliestPublishDate, string latestPublishDate, string newsSources, string authors, string entities, string locationFilter, int? offset, int? number, string sort, string sortDirection)
        {
            

            var path = "/search-news";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (text != null) queryParams.Add("text", ApiClient.ParameterToString(text)); // query parameter
 if (sourceCountries != null) queryParams.Add("source-countries", ApiClient.ParameterToString(sourceCountries)); // query parameter
 if (language != null) queryParams.Add("language", ApiClient.ParameterToString(language)); // query parameter
 if (minSentiment != null) queryParams.Add("min-sentiment", ApiClient.ParameterToString(minSentiment)); // query parameter
 if (maxSentiment != null) queryParams.Add("max-sentiment", ApiClient.ParameterToString(maxSentiment)); // query parameter
 if (earliestPublishDate != null) queryParams.Add("earliest-publish-date", ApiClient.ParameterToString(earliestPublishDate)); // query parameter
 if (latestPublishDate != null) queryParams.Add("latest-publish-date", ApiClient.ParameterToString(latestPublishDate)); // query parameter
 if (newsSources != null) queryParams.Add("news-sources", ApiClient.ParameterToString(newsSources)); // query parameter
 if (authors != null) queryParams.Add("authors", ApiClient.ParameterToString(authors)); // query parameter
 if (entities != null) queryParams.Add("entities", ApiClient.ParameterToString(entities)); // query parameter
 if (locationFilter != null) queryParams.Add("location-filter", ApiClient.ParameterToString(locationFilter)); // query parameter
 if (offset != null) queryParams.Add("offset", ApiClient.ParameterToString(offset)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
 if (sort != null) queryParams.Add("sort", ApiClient.ParameterToString(sort)); // query parameter
 if (sortDirection != null) queryParams.Add("sort-direction", ApiClient.ParameterToString(sortDirection)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchNews: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchNews: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse200) ApiClient.Deserialize(response.Content, typeof(InlineResponse200), response.Headers);
        }

    }
}
