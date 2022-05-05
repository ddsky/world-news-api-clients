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
 *
 */


import ApiClient from "../ApiClient";
import InlineResponse200 from '../com.worldnewsapi.client.model/InlineResponse200';
import InlineResponse2001 from '../com.worldnewsapi.client.model/InlineResponse2001';
import InlineResponse2002 from '../com.worldnewsapi.client.model/InlineResponse2002';

/**
* News service.
* @module com.worldnewsapi.client/com.worldnewsapi/NewsApi
* @version 1.0
*/
export default class NewsApi {

    /**
    * Constructs a new NewsApi. 
    * @alias module:com.worldnewsapi.client/com.worldnewsapi/NewsApi
    * @class
    * @param {module:com.worldnewsapi.client/ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:com.worldnewsapi.client/ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the extractNews operation.
     * @callback module:com.worldnewsapi.client/com.worldnewsapi/NewsApi~extractNewsCallback
     * @param {String} error Error message, if any.
     * @param {module:com.worldnewsapi.client/com.worldnewsapi.client.model/InlineResponse2001} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Extract News
     * Extract a news entry from a news site.
     * @param {String} url The url of the news.
     * @param {Boolean} analyze Whether to analyze the news (extract entities etc.)
     * @param {module:com.worldnewsapi.client/com.worldnewsapi/NewsApi~extractNewsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:com.worldnewsapi.client/com.worldnewsapi.client.model/InlineResponse2001}
     */
    extractNews(url, analyze, callback) {
      let postBody = null;
      // verify the required parameter 'url' is set
      if (url === undefined || url === null) {
        throw new Error("Missing the required parameter 'url' when calling extractNews");
      }
      // verify the required parameter 'analyze' is set
      if (analyze === undefined || analyze === null) {
        throw new Error("Missing the required parameter 'analyze' when calling extractNews");
      }

      let pathParams = {
      };
      let queryParams = {
        'url': url,
        'analyze': analyze
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = InlineResponse2001;
      return this.apiClient.callApi(
        '/extract-news', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the geoCoordinates operation.
     * @callback module:com.worldnewsapi.client/com.worldnewsapi/NewsApi~geoCoordinatesCallback
     * @param {String} error Error message, if any.
     * @param {module:com.worldnewsapi.client/com.worldnewsapi.client.model/InlineResponse2002} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get Geo Coordinates
     * Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country.
     * @param {String} location The address or name of the location, e.g. Tokyo, Japan.
     * @param {module:com.worldnewsapi.client/com.worldnewsapi/NewsApi~geoCoordinatesCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:com.worldnewsapi.client/com.worldnewsapi.client.model/InlineResponse2002}
     */
    geoCoordinates(location, callback) {
      let postBody = null;
      // verify the required parameter 'location' is set
      if (location === undefined || location === null) {
        throw new Error("Missing the required parameter 'location' when calling geoCoordinates");
      }

      let pathParams = {
      };
      let queryParams = {
        'location': location
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = InlineResponse2002;
      return this.apiClient.callApi(
        '/geo-coordinates', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the searchNews operation.
     * @callback module:com.worldnewsapi.client/com.worldnewsapi/NewsApi~searchNewsCallback
     * @param {String} error Error message, if any.
     * @param {module:com.worldnewsapi.client/com.worldnewsapi.client.model/InlineResponse200} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Search News
     * Search for news.
     * @param {Object} opts Optional parameters
     * @param {String} opts.text The text to match in the news content.
     * @param {String} opts.sourceCountries A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us.
     * @param {String} opts.language The ISO 6391 language code of the news, e.g. \"en\" for English.
     * @param {Number} opts.minSentiment The minimal sentiment of the news in range [-1,1].
     * @param {Number} opts.maxSentiment The maximal sentiment of the news in range [-1,1].
     * @param {String} opts.earliestPublishDate The news must have been published after this date.
     * @param {String} opts.latestPublishDate The news must have been published before this date.
     * @param {String} opts.newsSources A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk
     * @param {String} opts.authors A comma-separated list of author names. Only news from any of the given authors will be returned.
     * @param {String} opts.entities Filter news by entities, e.g. ORG:Tesla.
     * @param {String} opts.locationFilter Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\", e.g. 51.050407, 13.737262, 100
     * @param {Number} opts.offset The number of news to skip in range [0,1000]
     * @param {Number} opts.number The number of news to return in range [1,100]
     * @param {module:com.worldnewsapi.client/com.worldnewsapi.client.model/String} opts.sort The sorting criteria.
     * @param {module:com.worldnewsapi.client/com.worldnewsapi.client.model/String} opts.sortDirection Whether to sort ascending or descending.
     * @param {module:com.worldnewsapi.client/com.worldnewsapi/NewsApi~searchNewsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:com.worldnewsapi.client/com.worldnewsapi.client.model/InlineResponse200}
     */
    searchNews(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'text': opts['text'],
        'source-countries': opts['sourceCountries'],
        'language': opts['language'],
        'min-sentiment': opts['minSentiment'],
        'max-sentiment': opts['maxSentiment'],
        'earliest-publish-date': opts['earliestPublishDate'],
        'latest-publish-date': opts['latestPublishDate'],
        'news-sources': opts['newsSources'],
        'authors': opts['authors'],
        'entities': opts['entities'],
        'location-filter': opts['locationFilter'],
        'offset': opts['offset'],
        'number': opts['number'],
        'sort': opts['sort'],
        'sort-direction': opts['sortDirection']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = InlineResponse200;
      return this.apiClient.callApi(
        '/search-news', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}