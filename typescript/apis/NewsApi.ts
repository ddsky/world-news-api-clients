// TODO: better import syntax?
import {BaseAPIRequestFactory, RequiredError, COLLECTION_FORMATS} from './baseapi';
import {Configuration} from '../configuration';
import {RequestContext, HttpMethod, ResponseContext, HttpFile, HttpInfo} from '../http/http';
import {ObjectSerializer} from '../models/ObjectSerializer';
import {ApiException} from './exception';
import {canConsumeForm, isCodeInRange} from '../util';
import {SecurityAuthentication} from '../auth/auth';


import { ExtractNews200Response } from '../models/ExtractNews200Response';
import { ExtractNewsLinks200Response } from '../models/ExtractNewsLinks200Response';
import { GetGeoCoordinates200Response } from '../models/GetGeoCoordinates200Response';
import { RetrieveNewsArticlesByIds200Response } from '../models/RetrieveNewsArticlesByIds200Response';
import { SearchNews200Response } from '../models/SearchNews200Response';
import { TopNews200Response } from '../models/TopNews200Response';

/**
 * no description
 */
export class NewsApiRequestFactory extends BaseAPIRequestFactory {

    /**
     * Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, images, videos, publish date, authors, language, source country, and sentiment of the news article.
     * Extract News
     * @param url The url of the news.
     * @param analyze Whether to analyze the news (extract entities etc.)
     */
    public async extractNews(url: string, analyze: boolean, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'url' is not null or undefined
        if (url === null || url === undefined) {
            throw new RequiredError("NewsApi", "extractNews", "url");
        }


        // verify required parameter 'analyze' is not null or undefined
        if (analyze === null || analyze === undefined) {
            throw new RequiredError("NewsApi", "extractNews", "analyze");
        }


        // Path Params
        const localVarPath = '/extract-news';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (url !== undefined) {
            requestContext.setQueryParam("url", ObjectSerializer.serialize(url, "string", ""));
        }

        // Query Params
        if (analyze !== undefined) {
            requestContext.setQueryParam("analyze", ObjectSerializer.serialize(analyze, "boolean", ""));
        }


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["apiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["headerApiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Extract news links from a news website.
     * Extract News Links
     * @param url The url of the news.
     * @param analyze Whether to analyze the news (extract entities etc.)
     */
    public async extractNewsLinks(url: string, analyze: boolean, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'url' is not null or undefined
        if (url === null || url === undefined) {
            throw new RequiredError("NewsApi", "extractNewsLinks", "url");
        }


        // verify required parameter 'analyze' is not null or undefined
        if (analyze === null || analyze === undefined) {
            throw new RequiredError("NewsApi", "extractNewsLinks", "analyze");
        }


        // Path Params
        const localVarPath = '/extract-news-links';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (url !== undefined) {
            requestContext.setQueryParam("url", ObjectSerializer.serialize(url, "string", ""));
        }

        // Query Params
        if (analyze !== undefined) {
            requestContext.setQueryParam("analyze", ObjectSerializer.serialize(analyze, "boolean", ""));
        }


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["apiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["headerApiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Retrieve the latitude and longitude of a location name. Given this information you can fill the location-filter parameter in the news search endpoint.
     * Get Geo Coordinates
     * @param location The address or name of the location.
     */
    public async getGeoCoordinates(location: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'location' is not null or undefined
        if (location === null || location === undefined) {
            throw new RequiredError("NewsApi", "getGeoCoordinates", "location");
        }


        // Path Params
        const localVarPath = '/geo-coordinates';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (location !== undefined) {
            requestContext.setQueryParam("location", ObjectSerializer.serialize(location, "string", ""));
        }


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["apiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["headerApiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page.
     * News Website to RSS Feed
     * @param url The url of the news.
     * @param analyze Whether to analyze the news (extract entities etc.)
     */
    public async newsWebsiteToRSSFeed(url: string, analyze: boolean, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'url' is not null or undefined
        if (url === null || url === undefined) {
            throw new RequiredError("NewsApi", "newsWebsiteToRSSFeed", "url");
        }


        // verify required parameter 'analyze' is not null or undefined
        if (analyze === null || analyze === undefined) {
            throw new RequiredError("NewsApi", "newsWebsiteToRSSFeed", "analyze");
        }


        // Path Params
        const localVarPath = '/feed.rss';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (url !== undefined) {
            requestContext.setQueryParam("url", ObjectSerializer.serialize(url, "string", ""));
        }

        // Query Params
        if (analyze !== undefined) {
            requestContext.setQueryParam("analyze", ObjectSerializer.serialize(analyze, "boolean", ""));
        }


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["apiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["headerApiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Retrieve information about one or more news articles by their ids. The ids can be retrieved from the search news or top news APIs.
     * Retrieve News Articles by Ids
     * @param ids A comma separated list of news ids.
     */
    public async retrieveNewsArticlesByIds(ids: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'ids' is not null or undefined
        if (ids === null || ids === undefined) {
            throw new RequiredError("NewsApi", "retrieveNewsArticlesByIds", "ids");
        }


        // Path Params
        const localVarPath = '/retrieve-news';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (ids !== undefined) {
            requestContext.setQueryParam("ids", ObjectSerializer.serialize(ids, "string", ""));
        }


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["apiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["headerApiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Search and filter news by text, date, location, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
     * Search News
     * @param text The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford
     * @param sourceCountries A comma-separated list of ISO 3166 country codes from which the news should originate.
     * @param language The ISO 6391 language code of the news.
     * @param minSentiment The minimal sentiment of the news in range [-1,1].
     * @param maxSentiment The maximal sentiment of the news in range [-1,1].
     * @param earliestPublishDate The news must have been published after this date.
     * @param latestPublishDate The news must have been published before this date.
     * @param newsSources A comma-separated list of news sources from which the news should originate.
     * @param authors A comma-separated list of author names. Only news from any of the given authors will be returned.
     * @param entities Filter news by entities (see semantic types).
     * @param locationFilter Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;. Radius must be between 1 and 100 kilometers.
     * @param sort The sorting criteria (publish-time or sentiment).
     * @param sortDirection Whether to sort ascending or descending (ASC or DESC).
     * @param offset The number of news to skip in range [0,10000]
     * @param number The number of news to return in range [1,100]
     */
    public async searchNews(text?: string, sourceCountries?: string, language?: string, minSentiment?: number, maxSentiment?: number, earliestPublishDate?: string, latestPublishDate?: string, newsSources?: string, authors?: string, entities?: string, locationFilter?: string, sort?: string, sortDirection?: string, offset?: number, number?: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;
















        // Path Params
        const localVarPath = '/search-news';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (text !== undefined) {
            requestContext.setQueryParam("text", ObjectSerializer.serialize(text, "string", ""));
        }

        // Query Params
        if (sourceCountries !== undefined) {
            requestContext.setQueryParam("source-countries", ObjectSerializer.serialize(sourceCountries, "string", ""));
        }

        // Query Params
        if (language !== undefined) {
            requestContext.setQueryParam("language", ObjectSerializer.serialize(language, "string", ""));
        }

        // Query Params
        if (minSentiment !== undefined) {
            requestContext.setQueryParam("min-sentiment", ObjectSerializer.serialize(minSentiment, "number", "double"));
        }

        // Query Params
        if (maxSentiment !== undefined) {
            requestContext.setQueryParam("max-sentiment", ObjectSerializer.serialize(maxSentiment, "number", "double"));
        }

        // Query Params
        if (earliestPublishDate !== undefined) {
            requestContext.setQueryParam("earliest-publish-date", ObjectSerializer.serialize(earliestPublishDate, "string", ""));
        }

        // Query Params
        if (latestPublishDate !== undefined) {
            requestContext.setQueryParam("latest-publish-date", ObjectSerializer.serialize(latestPublishDate, "string", ""));
        }

        // Query Params
        if (newsSources !== undefined) {
            requestContext.setQueryParam("news-sources", ObjectSerializer.serialize(newsSources, "string", ""));
        }

        // Query Params
        if (authors !== undefined) {
            requestContext.setQueryParam("authors", ObjectSerializer.serialize(authors, "string", ""));
        }

        // Query Params
        if (entities !== undefined) {
            requestContext.setQueryParam("entities", ObjectSerializer.serialize(entities, "string", ""));
        }

        // Query Params
        if (locationFilter !== undefined) {
            requestContext.setQueryParam("location-filter", ObjectSerializer.serialize(locationFilter, "string", ""));
        }

        // Query Params
        if (sort !== undefined) {
            requestContext.setQueryParam("sort", ObjectSerializer.serialize(sort, "string", ""));
        }

        // Query Params
        if (sortDirection !== undefined) {
            requestContext.setQueryParam("sort-direction", ObjectSerializer.serialize(sortDirection, "string", ""));
        }

        // Query Params
        if (offset !== undefined) {
            requestContext.setQueryParam("offset", ObjectSerializer.serialize(offset, "number", "int32"));
        }

        // Query Params
        if (number !== undefined) {
            requestContext.setQueryParam("number", ObjectSerializer.serialize(number, "number", "int32"));
        }


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["apiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["headerApiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.
     * Top News
     * @param sourceCountry The ISO 3166 country code of the country for which top news should be retrieved.
     * @param language The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
     * @param date The date for which the top news should be retrieved. If no date is given, the current day is assumed.
     * @param headlinesOnly Whether to only return basic information such as id, title, and url of the news.
     */
    public async topNews(sourceCountry: string, language: string, date?: string, headlinesOnly?: boolean, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'sourceCountry' is not null or undefined
        if (sourceCountry === null || sourceCountry === undefined) {
            throw new RequiredError("NewsApi", "topNews", "sourceCountry");
        }


        // verify required parameter 'language' is not null or undefined
        if (language === null || language === undefined) {
            throw new RequiredError("NewsApi", "topNews", "language");
        }




        // Path Params
        const localVarPath = '/top-news';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (sourceCountry !== undefined) {
            requestContext.setQueryParam("source-country", ObjectSerializer.serialize(sourceCountry, "string", ""));
        }

        // Query Params
        if (language !== undefined) {
            requestContext.setQueryParam("language", ObjectSerializer.serialize(language, "string", ""));
        }

        // Query Params
        if (date !== undefined) {
            requestContext.setQueryParam("date", ObjectSerializer.serialize(date, "string", ""));
        }

        // Query Params
        if (headlinesOnly !== undefined) {
            requestContext.setQueryParam("headlines-only", ObjectSerializer.serialize(headlinesOnly, "boolean", ""));
        }


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["apiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["headerApiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

}

export class NewsApiResponseProcessor {

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to extractNews
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async extractNewsWithHttpInfo(response: ResponseContext): Promise<HttpInfo<ExtractNews200Response >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: ExtractNews200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ExtractNews200Response", ""
            ) as ExtractNews200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Unauthorized", undefined, response.headers);
        }
        if (isCodeInRange("402", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Payment Required", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Forbidden", undefined, response.headers);
        }
        if (isCodeInRange("404", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Not Found", undefined, response.headers);
        }
        if (isCodeInRange("406", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Not Acceptable", undefined, response.headers);
        }
        if (isCodeInRange("429", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Too Many Requests", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: ExtractNews200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ExtractNews200Response", ""
            ) as ExtractNews200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to extractNewsLinks
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async extractNewsLinksWithHttpInfo(response: ResponseContext): Promise<HttpInfo<ExtractNewsLinks200Response >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: ExtractNewsLinks200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ExtractNewsLinks200Response", ""
            ) as ExtractNewsLinks200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Unauthorized", undefined, response.headers);
        }
        if (isCodeInRange("402", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Payment Required", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Forbidden", undefined, response.headers);
        }
        if (isCodeInRange("404", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Not Found", undefined, response.headers);
        }
        if (isCodeInRange("406", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Not Acceptable", undefined, response.headers);
        }
        if (isCodeInRange("429", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Too Many Requests", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: ExtractNewsLinks200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ExtractNewsLinks200Response", ""
            ) as ExtractNewsLinks200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getGeoCoordinates
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getGeoCoordinatesWithHttpInfo(response: ResponseContext): Promise<HttpInfo<GetGeoCoordinates200Response >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GetGeoCoordinates200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetGeoCoordinates200Response", ""
            ) as GetGeoCoordinates200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Unauthorized", undefined, response.headers);
        }
        if (isCodeInRange("402", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Payment Required", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Forbidden", undefined, response.headers);
        }
        if (isCodeInRange("404", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Not Found", undefined, response.headers);
        }
        if (isCodeInRange("406", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Not Acceptable", undefined, response.headers);
        }
        if (isCodeInRange("429", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Too Many Requests", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: GetGeoCoordinates200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetGeoCoordinates200Response", ""
            ) as GetGeoCoordinates200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to newsWebsiteToRSSFeed
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async newsWebsiteToRSSFeedWithHttpInfo(response: ResponseContext): Promise<HttpInfo<any >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: any = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "any", ""
            ) as any;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Unauthorized", undefined, response.headers);
        }
        if (isCodeInRange("402", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Payment Required", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Forbidden", undefined, response.headers);
        }
        if (isCodeInRange("404", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Not Found", undefined, response.headers);
        }
        if (isCodeInRange("406", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Not Acceptable", undefined, response.headers);
        }
        if (isCodeInRange("429", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Too Many Requests", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: any = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "any", ""
            ) as any;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to retrieveNewsArticlesByIds
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async retrieveNewsArticlesByIdsWithHttpInfo(response: ResponseContext): Promise<HttpInfo<RetrieveNewsArticlesByIds200Response >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: RetrieveNewsArticlesByIds200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "RetrieveNewsArticlesByIds200Response", ""
            ) as RetrieveNewsArticlesByIds200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Unauthorized", undefined, response.headers);
        }
        if (isCodeInRange("402", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Payment Required", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Forbidden", undefined, response.headers);
        }
        if (isCodeInRange("404", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Not Found", undefined, response.headers);
        }
        if (isCodeInRange("406", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Not Acceptable", undefined, response.headers);
        }
        if (isCodeInRange("429", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Too Many Requests", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: RetrieveNewsArticlesByIds200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "RetrieveNewsArticlesByIds200Response", ""
            ) as RetrieveNewsArticlesByIds200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to searchNews
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async searchNewsWithHttpInfo(response: ResponseContext): Promise<HttpInfo<SearchNews200Response >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SearchNews200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SearchNews200Response", ""
            ) as SearchNews200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Unauthorized", undefined, response.headers);
        }
        if (isCodeInRange("402", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Payment Required", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Forbidden", undefined, response.headers);
        }
        if (isCodeInRange("404", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Not Found", undefined, response.headers);
        }
        if (isCodeInRange("406", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Not Acceptable", undefined, response.headers);
        }
        if (isCodeInRange("429", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Too Many Requests", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: SearchNews200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SearchNews200Response", ""
            ) as SearchNews200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to topNews
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async topNewsWithHttpInfo(response: ResponseContext): Promise<HttpInfo<TopNews200Response >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: TopNews200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "TopNews200Response", ""
            ) as TopNews200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Unauthorized", undefined, response.headers);
        }
        if (isCodeInRange("402", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Payment Required", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Forbidden", undefined, response.headers);
        }
        if (isCodeInRange("404", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Not Found", undefined, response.headers);
        }
        if (isCodeInRange("406", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Not Acceptable", undefined, response.headers);
        }
        if (isCodeInRange("429", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Too Many Requests", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: TopNews200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "TopNews200Response", ""
            ) as TopNews200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

}
