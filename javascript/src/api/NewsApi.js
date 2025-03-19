/**
 * World News API
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 2.2.0
 * Contact: mail@worldnewsapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */


import ApiClient from "../ApiClient";
import ExtractNews200Response from '../model/ExtractNews200Response';
import ExtractNewsLinks200Response from '../model/ExtractNewsLinks200Response';
import GetGeoCoordinates200Response from '../model/GetGeoCoordinates200Response';
import RetrieveNewsArticlesByIds200Response from '../model/RetrieveNewsArticlesByIds200Response';
import RetrieveNewspaperFrontPage200Response from '../model/RetrieveNewspaperFrontPage200Response';
import SearchNews200Response from '../model/SearchNews200Response';
import SearchNewsSources200Response from '../model/SearchNewsSources200Response';
import TopNews200Response from '../model/TopNews200Response';

/**
* News service.
* @module api/NewsApi
* @version 2.2.0
*/
export default class NewsApi {

    /**
    * Constructs a new NewsApi. 
    * @alias module:api/NewsApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the extractNews operation.
     * @callback module:api/NewsApi~extractNewsCallback
     * @param {String} error Error message, if any.
     * @param {module:model/ExtractNews200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Extract News
     * Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, images, videos, publish date, authors, language, source country, and sentiment of the news article.
     * @param {String} url The url of the news.
     * @param {Object} opts Optional parameters
     * @param {Boolean} [analyze] Whether to analyze the extracted news (extract entities, detect sentiment etc.)
     * @param {module:api/NewsApi~extractNewsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/ExtractNews200Response}
     */
    extractNews(url, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'url' is set
      if (url === undefined || url === null) {
        throw new Error("Missing the required parameter 'url' when calling extractNews");
      }

      let pathParams = {
      };
      let queryParams = {
        'url': url,
        'analyze': opts['analyze']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = ExtractNews200Response;
      return this.apiClient.callApi(
        '/extract-news', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the extractNewsLinks operation.
     * @callback module:api/NewsApi~extractNewsLinksCallback
     * @param {String} error Error message, if any.
     * @param {module:model/ExtractNewsLinks200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Extract News Links
     * Extract news links from a news website.
     * @param {String} url The url of the news.
     * @param {Object} opts Optional parameters
     * @param {Boolean} [analyze] Whether to analyze the extracted news (extract entities, detect sentiment etc.)
     * @param {module:api/NewsApi~extractNewsLinksCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/ExtractNewsLinks200Response}
     */
    extractNewsLinks(url, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'url' is set
      if (url === undefined || url === null) {
        throw new Error("Missing the required parameter 'url' when calling extractNewsLinks");
      }

      let pathParams = {
      };
      let queryParams = {
        'url': url,
        'analyze': opts['analyze']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = ExtractNewsLinks200Response;
      return this.apiClient.callApi(
        '/extract-news-links', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the getGeoCoordinates operation.
     * @callback module:api/NewsApi~getGeoCoordinatesCallback
     * @param {String} error Error message, if any.
     * @param {module:model/GetGeoCoordinates200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get Geo Coordinates
     * Retrieve the latitude and longitude of a location name. Given this information you can fill the location-filter parameter in the news search endpoint.
     * @param {String} location The address or name of the location.
     * @param {module:api/NewsApi~getGeoCoordinatesCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/GetGeoCoordinates200Response}
     */
    getGeoCoordinates(location, callback) {
      let postBody = null;
      // verify the required parameter 'location' is set
      if (location === undefined || location === null) {
        throw new Error("Missing the required parameter 'location' when calling getGeoCoordinates");
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

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = GetGeoCoordinates200Response;
      return this.apiClient.callApi(
        '/geo-coordinates', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the newsWebsiteToRSSFeed operation.
     * @callback module:api/NewsApi~newsWebsiteToRSSFeedCallback
     * @param {String} error Error message, if any.
     * @param {Object} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * News Website to RSS Feed
     * Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page.
     * @param {String} url The url of the site for which an RSS feed should be created.
     * @param {Object} opts Optional parameters
     * @param {Boolean} [extractNews] Whether to extract the news for each link instead of just returning the link.
     * @param {module:api/NewsApi~newsWebsiteToRSSFeedCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Object}
     */
    newsWebsiteToRSSFeed(url, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'url' is set
      if (url === undefined || url === null) {
        throw new Error("Missing the required parameter 'url' when calling newsWebsiteToRSSFeed");
      }

      let pathParams = {
      };
      let queryParams = {
        'url': url,
        'extract-news': opts['extractNews']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/xml'];
      let returnType = Object;
      return this.apiClient.callApi(
        '/feed.rss', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the retrieveNewsArticlesByIds operation.
     * @callback module:api/NewsApi~retrieveNewsArticlesByIdsCallback
     * @param {String} error Error message, if any.
     * @param {module:model/RetrieveNewsArticlesByIds200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve News Articles by Ids
     * Retrieve information about one or more news articles by their ids. The ids can be retrieved from the search news or top news APIs.
     * @param {String} ids A comma separated list of news ids.
     * @param {module:api/NewsApi~retrieveNewsArticlesByIdsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/RetrieveNewsArticlesByIds200Response}
     */
    retrieveNewsArticlesByIds(ids, callback) {
      let postBody = null;
      // verify the required parameter 'ids' is set
      if (ids === undefined || ids === null) {
        throw new Error("Missing the required parameter 'ids' when calling retrieveNewsArticlesByIds");
      }

      let pathParams = {
      };
      let queryParams = {
        'ids': ids
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = RetrieveNewsArticlesByIds200Response;
      return this.apiClient.callApi(
        '/retrieve-news', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the retrieveNewspaperFrontPage operation.
     * @callback module:api/NewsApi~retrieveNewspaperFrontPageCallback
     * @param {String} error Error message, if any.
     * @param {module:model/RetrieveNewspaperFrontPage200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve Newspaper Front Page
     * Get the front pages of newspapers from around the world. The API provides images of the front pages of newspapers from different countries. Here's an example of some of today's newspapers:
     * @param {Object} opts Optional parameters
     * @param {String} [sourceCountry] The ISO 3166 country code of the newspaper publication.
     * @param {String} [sourceName] The identifier of the publication see attached list.
     * @param {String} [date] The date for which the front page should be retrieved. You can also go into the past, the earliest date is 2024-07-09.
     * @param {module:api/NewsApi~retrieveNewspaperFrontPageCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/RetrieveNewspaperFrontPage200Response}
     */
    retrieveNewspaperFrontPage(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'source-country': opts['sourceCountry'],
        'source-name': opts['sourceName'],
        'date': opts['date']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = RetrieveNewspaperFrontPage200Response;
      return this.apiClient.callApi(
        '/retrieve-front-page', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the searchNews operation.
     * @callback module:api/NewsApi~searchNewsCallback
     * @param {String} error Error message, if any.
     * @param {module:model/SearchNews200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Search News
     * Search and filter news by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. Each returned article includes the title, the full text of the article, a summary, image URL, video URL, the publish date, the authors, the category, the language, the source country, and the sentiment of the article. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
     * @param {Object} opts Optional parameters
     * @param {String} [text] The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford. You can also exclude terms by putting a minus sign (-) in front of the term, e.g. tesla -ford. For exact matches just put your term in quotes, e.g. \"elon musk\".
     * @param {String} [textMatchIndexes] If a \"text\" is given to search for, you can specify where this text is searched for. Possible values are title, content, or both separated by a comma. By default, both title and content are searched.
     * @param {String} [sourceCountry] The ISO 3166 country code from which the news should originate.
     * @param {String} [language] The ISO 6391 language code of the news.
     * @param {Number} [minSentiment] The minimal sentiment of the news in range [-1,1].
     * @param {Number} [maxSentiment] The maximal sentiment of the news in range [-1,1].
     * @param {String} [earliestPublishDate] The news must have been published after this date.
     * @param {String} [latestPublishDate] The news must have been published before this date.
     * @param {String} [newsSources] A comma-separated list of news sources from which the news should originate.
     * @param {String} [authors] A comma-separated list of author names. Only news from any of the given authors will be returned.
     * @param {String} [categories] A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other. Please note that the filter might leave out news, especially in non-English languages. If too few results are returned, use the text parameter instead.
     * @param {String} [entities] Filter news by entities (see semantic types).
     * @param {String} [locationFilter] Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\". Radius must be between 1 and 100 kilometers.
     * @param {String} [sort] The sorting criteria (publish-time).
     * @param {String} [sortDirection] Whether to sort ascending or descending (ASC or DESC).
     * @param {Number} [offset] The number of news to skip in range [0,100000]
     * @param {Number} [number] The number of news to return in range [1,100]
     * @param {module:api/NewsApi~searchNewsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/SearchNews200Response}
     */
    searchNews(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'text': opts['text'],
        'text-match-indexes': opts['textMatchIndexes'],
        'source-country': opts['sourceCountry'],
        'language': opts['language'],
        'min-sentiment': opts['minSentiment'],
        'max-sentiment': opts['maxSentiment'],
        'earliest-publish-date': opts['earliestPublishDate'],
        'latest-publish-date': opts['latestPublishDate'],
        'news-sources': opts['newsSources'],
        'authors': opts['authors'],
        'categories': opts['categories'],
        'entities': opts['entities'],
        'location-filter': opts['locationFilter'],
        'sort': opts['sort'],
        'sort-direction': opts['sortDirection'],
        'offset': opts['offset'],
        'number': opts['number']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = SearchNews200Response;
      return this.apiClient.callApi(
        '/search-news', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the searchNewsSources operation.
     * @callback module:api/NewsApi~searchNewsSourcesCallback
     * @param {String} error Error message, if any.
     * @param {module:model/SearchNewsSources200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Search News Sources
     * Search whether a news source is being monitored by the World News API. This API is useful if you want to know if a specific news source is available in the API.
     * @param {String} name The (partial) name of the source.
     * @param {module:api/NewsApi~searchNewsSourcesCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/SearchNewsSources200Response}
     */
    searchNewsSources(name, callback) {
      let postBody = null;
      // verify the required parameter 'name' is set
      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling searchNewsSources");
      }

      let pathParams = {
      };
      let queryParams = {
        'name': name
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = SearchNewsSources200Response;
      return this.apiClient.callApi(
        '/search-news-sources', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the topNews operation.
     * @callback module:api/NewsApi~topNewsCallback
     * @param {String} error Error message, if any.
     * @param {module:model/TopNews200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Top News
     * Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.
     * @param {String} sourceCountry The ISO 3166 country code of the country for which top news should be retrieved.
     * @param {String} language The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
     * @param {Object} opts Optional parameters
     * @param {String} [date] The date for which the top news should be retrieved. If no date is given, the current day is assumed.
     * @param {Boolean} [headlinesOnly] Whether to only return basic information such as id, title, and url of the news.
     * @param {module:api/NewsApi~topNewsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/TopNews200Response}
     */
    topNews(sourceCountry, language, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'sourceCountry' is set
      if (sourceCountry === undefined || sourceCountry === null) {
        throw new Error("Missing the required parameter 'sourceCountry' when calling topNews");
      }
      // verify the required parameter 'language' is set
      if (language === undefined || language === null) {
        throw new Error("Missing the required parameter 'language' when calling topNews");
      }

      let pathParams = {
      };
      let queryParams = {
        'source-country': sourceCountry,
        'language': language,
        'date': opts['date'],
        'headlines-only': opts['headlinesOnly']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = TopNews200Response;
      return this.apiClient.callApi(
        '/top-news', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
