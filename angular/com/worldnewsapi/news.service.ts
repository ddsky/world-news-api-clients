/**
 * World News API
 * The world\'s news wrapped into a single API.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@worldnewsapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
/* tslint:disable:no-unused-variable member-ordering */

import { Inject, Injectable, Optional }                      from '@angular/core';
import { HttpClient, HttpHeaders, HttpParams,
         HttpResponse, HttpEvent, HttpParameterCodec, HttpContext 
        }       from '@angular/common/http';
import { CustomHttpParameterCodec }                          from '../encoder';
import { Observable }                                        from 'rxjs';

// @ts-ignore
import { InlineResponse200 } from '../com.worldnewsapi.client.model/inlineResponse200';
// @ts-ignore
import { InlineResponse2001 } from '../com.worldnewsapi.client.model/inlineResponse2001';
// @ts-ignore
import { InlineResponse2002 } from '../com.worldnewsapi.client.model/inlineResponse2002';

// @ts-ignore
import { BASE_PATH, COLLECTION_FORMATS }                     from '../variables';
import { Configuration }                                     from '../configuration';



@Injectable({
  providedIn: 'root'
})
export class NewsService {

    protected basePath = 'https://api.worldnewsapi.com';
    public defaultHeaders = new HttpHeaders();
    public configuration = new Configuration();
    public encoder: HttpParameterCodec;

    constructor(protected httpClient: HttpClient, @Optional()@Inject(BASE_PATH) basePath: string, @Optional() configuration: Configuration) {
        if (configuration) {
            this.configuration = configuration;
        }
        if (typeof this.configuration.basePath !== 'string') {
            if (typeof basePath !== 'string') {
                basePath = this.basePath;
            }
            this.configuration.basePath = basePath;
        }
        this.encoder = this.configuration.encoder || new CustomHttpParameterCodec();
    }


    private addToHttpParams(httpParams: HttpParams, value: any, key?: string): HttpParams {
        if (typeof value === "object" && value instanceof Date === false) {
            httpParams = this.addToHttpParamsRecursive(httpParams, value);
        } else {
            httpParams = this.addToHttpParamsRecursive(httpParams, value, key);
        }
        return httpParams;
    }

    private addToHttpParamsRecursive(httpParams: HttpParams, value?: any, key?: string): HttpParams {
        if (value == null) {
            return httpParams;
        }

        if (typeof value === "object") {
            if (Array.isArray(value)) {
                (value as any[]).forEach( elem => httpParams = this.addToHttpParamsRecursive(httpParams, elem, key));
            } else if (value instanceof Date) {
                if (key != null) {
                    httpParams = httpParams.append(key,
                        (value as Date).toISOString().substr(0, 10));
                } else {
                   throw Error("key may not be null if value is Date");
                }
            } else {
                Object.keys(value).forEach( k => httpParams = this.addToHttpParamsRecursive(
                    httpParams, value[k], key != null ? `${key}.${k}` : k));
            }
        } else if (key != null) {
            httpParams = httpParams.append(key, value);
        } else {
            throw Error("key may not be null if value is not object or array");
        }
        return httpParams;
    }

    /**
     * Extract News
     * Extract a news entry from a news site.
     * @param url The url of the news.
     * @param analyze Whether to analyze the news (extract entities etc.)
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public extractNews(url: string, analyze: boolean, observe?: 'body', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json', context?: HttpContext}): Observable<InlineResponse2001>;
    public extractNews(url: string, analyze: boolean, observe?: 'response', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json', context?: HttpContext}): Observable<HttpResponse<InlineResponse2001>>;
    public extractNews(url: string, analyze: boolean, observe?: 'events', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json', context?: HttpContext}): Observable<HttpEvent<InlineResponse2001>>;
    public extractNews(url: string, analyze: boolean, observe: any = 'body', reportProgress: boolean = false, options?: {httpHeaderAccept?: 'application/json', context?: HttpContext}): Observable<any> {
        if (url === null || url === undefined) {
            throw new Error('Required parameter url was null or undefined when calling extractNews.');
        }
        if (analyze === null || analyze === undefined) {
            throw new Error('Required parameter analyze was null or undefined when calling extractNews.');
        }

        let localVarQueryParameters = new HttpParams({encoder: this.encoder});
        if (url !== undefined && url !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>url, 'url');
        }
        if (analyze !== undefined && analyze !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>analyze, 'analyze');
        }

        let localVarHeaders = this.defaultHeaders;

        let localVarCredential: string | undefined;
        // authentication (apiKey) required
        localVarCredential = this.configuration.lookupCredential('apiKey');
        if (localVarCredential) {
            localVarQueryParameters = localVarQueryParameters.set('api-key', localVarCredential);
        }

        let localVarHttpHeaderAcceptSelected: string | undefined = options && options.httpHeaderAccept;
        if (localVarHttpHeaderAcceptSelected === undefined) {
            // to determine the Accept header
            const httpHeaderAccepts: string[] = [
                'application/json'
            ];
            localVarHttpHeaderAcceptSelected = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        }
        if (localVarHttpHeaderAcceptSelected !== undefined) {
            localVarHeaders = localVarHeaders.set('Accept', localVarHttpHeaderAcceptSelected);
        }

        let localVarHttpContext: HttpContext | undefined = options && options.context;
        if (localVarHttpContext === undefined) {
            localVarHttpContext = new HttpContext();
        }


        let responseType_: 'text' | 'json' | 'blob' = 'json';
        if (localVarHttpHeaderAcceptSelected) {
            if (localVarHttpHeaderAcceptSelected.startsWith('text')) {
                responseType_ = 'text';
            } else if (this.configuration.isJsonMime(localVarHttpHeaderAcceptSelected)) {
                responseType_ = 'json';
            } else {
                responseType_ = 'blob';
            }
        }

        return this.httpClient.get<InlineResponse2001>(`${this.configuration.basePath}/extract-news`,
            {
                context: localVarHttpContext,
                params: localVarQueryParameters,
                responseType: <any>responseType_,
                withCredentials: this.configuration.withCredentials,
                headers: localVarHeaders,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

    /**
     * Get Geo Coordinates
     * Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country.
     * @param location The address or name of the location, e.g. Tokyo, Japan.
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public geoCoordinates(location: string, observe?: 'body', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json', context?: HttpContext}): Observable<InlineResponse2002>;
    public geoCoordinates(location: string, observe?: 'response', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json', context?: HttpContext}): Observable<HttpResponse<InlineResponse2002>>;
    public geoCoordinates(location: string, observe?: 'events', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json', context?: HttpContext}): Observable<HttpEvent<InlineResponse2002>>;
    public geoCoordinates(location: string, observe: any = 'body', reportProgress: boolean = false, options?: {httpHeaderAccept?: 'application/json', context?: HttpContext}): Observable<any> {
        if (location === null || location === undefined) {
            throw new Error('Required parameter location was null or undefined when calling geoCoordinates.');
        }

        let localVarQueryParameters = new HttpParams({encoder: this.encoder});
        if (location !== undefined && location !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>location, 'location');
        }

        let localVarHeaders = this.defaultHeaders;

        let localVarCredential: string | undefined;
        // authentication (apiKey) required
        localVarCredential = this.configuration.lookupCredential('apiKey');
        if (localVarCredential) {
            localVarQueryParameters = localVarQueryParameters.set('api-key', localVarCredential);
        }

        let localVarHttpHeaderAcceptSelected: string | undefined = options && options.httpHeaderAccept;
        if (localVarHttpHeaderAcceptSelected === undefined) {
            // to determine the Accept header
            const httpHeaderAccepts: string[] = [
                'application/json'
            ];
            localVarHttpHeaderAcceptSelected = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        }
        if (localVarHttpHeaderAcceptSelected !== undefined) {
            localVarHeaders = localVarHeaders.set('Accept', localVarHttpHeaderAcceptSelected);
        }

        let localVarHttpContext: HttpContext | undefined = options && options.context;
        if (localVarHttpContext === undefined) {
            localVarHttpContext = new HttpContext();
        }


        let responseType_: 'text' | 'json' | 'blob' = 'json';
        if (localVarHttpHeaderAcceptSelected) {
            if (localVarHttpHeaderAcceptSelected.startsWith('text')) {
                responseType_ = 'text';
            } else if (this.configuration.isJsonMime(localVarHttpHeaderAcceptSelected)) {
                responseType_ = 'json';
            } else {
                responseType_ = 'blob';
            }
        }

        return this.httpClient.get<InlineResponse2002>(`${this.configuration.basePath}/geo-coordinates`,
            {
                context: localVarHttpContext,
                params: localVarQueryParameters,
                responseType: <any>responseType_,
                withCredentials: this.configuration.withCredentials,
                headers: localVarHeaders,
                observe: observe,
                reportProgress: reportProgress
            }
        );
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
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public searchNews(text?: string, sourceCountries?: string, language?: string, minSentiment?: number, maxSentiment?: number, earliestPublishDate?: string, latestPublishDate?: string, newsSources?: string, authors?: string, entities?: string, locationFilter?: string, offset?: number, number?: number, sort?: 'relevance' | 'publish-time' | 'sentiment', sortDirection?: 'asc' | 'desc', observe?: 'body', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json', context?: HttpContext}): Observable<InlineResponse200>;
    public searchNews(text?: string, sourceCountries?: string, language?: string, minSentiment?: number, maxSentiment?: number, earliestPublishDate?: string, latestPublishDate?: string, newsSources?: string, authors?: string, entities?: string, locationFilter?: string, offset?: number, number?: number, sort?: 'relevance' | 'publish-time' | 'sentiment', sortDirection?: 'asc' | 'desc', observe?: 'response', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json', context?: HttpContext}): Observable<HttpResponse<InlineResponse200>>;
    public searchNews(text?: string, sourceCountries?: string, language?: string, minSentiment?: number, maxSentiment?: number, earliestPublishDate?: string, latestPublishDate?: string, newsSources?: string, authors?: string, entities?: string, locationFilter?: string, offset?: number, number?: number, sort?: 'relevance' | 'publish-time' | 'sentiment', sortDirection?: 'asc' | 'desc', observe?: 'events', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json', context?: HttpContext}): Observable<HttpEvent<InlineResponse200>>;
    public searchNews(text?: string, sourceCountries?: string, language?: string, minSentiment?: number, maxSentiment?: number, earliestPublishDate?: string, latestPublishDate?: string, newsSources?: string, authors?: string, entities?: string, locationFilter?: string, offset?: number, number?: number, sort?: 'relevance' | 'publish-time' | 'sentiment', sortDirection?: 'asc' | 'desc', observe: any = 'body', reportProgress: boolean = false, options?: {httpHeaderAccept?: 'application/json', context?: HttpContext}): Observable<any> {

        let localVarQueryParameters = new HttpParams({encoder: this.encoder});
        if (text !== undefined && text !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>text, 'text');
        }
        if (sourceCountries !== undefined && sourceCountries !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>sourceCountries, 'source-countries');
        }
        if (language !== undefined && language !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>language, 'language');
        }
        if (minSentiment !== undefined && minSentiment !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>minSentiment, 'min-sentiment');
        }
        if (maxSentiment !== undefined && maxSentiment !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>maxSentiment, 'max-sentiment');
        }
        if (earliestPublishDate !== undefined && earliestPublishDate !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>earliestPublishDate, 'earliest-publish-date');
        }
        if (latestPublishDate !== undefined && latestPublishDate !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>latestPublishDate, 'latest-publish-date');
        }
        if (newsSources !== undefined && newsSources !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>newsSources, 'news-sources');
        }
        if (authors !== undefined && authors !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>authors, 'authors');
        }
        if (entities !== undefined && entities !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>entities, 'entities');
        }
        if (locationFilter !== undefined && locationFilter !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>locationFilter, 'location-filter');
        }
        if (offset !== undefined && offset !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>offset, 'offset');
        }
        if (number !== undefined && number !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>number, 'number');
        }
        if (sort !== undefined && sort !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>sort, 'sort');
        }
        if (sortDirection !== undefined && sortDirection !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>sortDirection, 'sort-direction');
        }

        let localVarHeaders = this.defaultHeaders;

        let localVarCredential: string | undefined;
        // authentication (apiKey) required
        localVarCredential = this.configuration.lookupCredential('apiKey');
        if (localVarCredential) {
            localVarQueryParameters = localVarQueryParameters.set('api-key', localVarCredential);
        }

        let localVarHttpHeaderAcceptSelected: string | undefined = options && options.httpHeaderAccept;
        if (localVarHttpHeaderAcceptSelected === undefined) {
            // to determine the Accept header
            const httpHeaderAccepts: string[] = [
                'application/json'
            ];
            localVarHttpHeaderAcceptSelected = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        }
        if (localVarHttpHeaderAcceptSelected !== undefined) {
            localVarHeaders = localVarHeaders.set('Accept', localVarHttpHeaderAcceptSelected);
        }

        let localVarHttpContext: HttpContext | undefined = options && options.context;
        if (localVarHttpContext === undefined) {
            localVarHttpContext = new HttpContext();
        }


        let responseType_: 'text' | 'json' | 'blob' = 'json';
        if (localVarHttpHeaderAcceptSelected) {
            if (localVarHttpHeaderAcceptSelected.startsWith('text')) {
                responseType_ = 'text';
            } else if (this.configuration.isJsonMime(localVarHttpHeaderAcceptSelected)) {
                responseType_ = 'json';
            } else {
                responseType_ = 'blob';
            }
        }

        return this.httpClient.get<InlineResponse200>(`${this.configuration.basePath}/search-news`,
            {
                context: localVarHttpContext,
                params: localVarQueryParameters,
                responseType: <any>responseType_,
                withCredentials: this.configuration.withCredentials,
                headers: localVarHeaders,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

}