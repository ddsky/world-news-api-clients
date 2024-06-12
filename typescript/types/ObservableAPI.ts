import { ResponseContext, RequestContext, HttpFile, HttpInfo } from '../http/http';
import { Configuration} from '../configuration'
import { Observable, of, from } from '../rxjsStub';
import {mergeMap, map} from  '../rxjsStub';
import { ExtractNews200Response } from '../models/ExtractNews200Response';
import { ExtractNews200ResponseImagesInner } from '../models/ExtractNews200ResponseImagesInner';
import { ExtractNews200ResponseVideosInner } from '../models/ExtractNews200ResponseVideosInner';
import { ExtractNewsLinks200Response } from '../models/ExtractNewsLinks200Response';
import { GetGeoCoordinates200Response } from '../models/GetGeoCoordinates200Response';
import { RetrieveNewsArticlesByIds200Response } from '../models/RetrieveNewsArticlesByIds200Response';
import { RetrieveNewsArticlesByIds200ResponseNewsInner } from '../models/RetrieveNewsArticlesByIds200ResponseNewsInner';
import { SearchNews200Response } from '../models/SearchNews200Response';
import { SearchNews200ResponseNewsInner } from '../models/SearchNews200ResponseNewsInner';
import { TopNews200Response } from '../models/TopNews200Response';
import { TopNews200ResponseTopNewsInner } from '../models/TopNews200ResponseTopNewsInner';
import { TopNews200ResponseTopNewsInnerNewsInner } from '../models/TopNews200ResponseTopNewsInnerNewsInner';

import { NewsApiRequestFactory, NewsApiResponseProcessor} from "../apis/NewsApi";
export class ObservableNewsApi {
    private requestFactory: NewsApiRequestFactory;
    private responseProcessor: NewsApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: NewsApiRequestFactory,
        responseProcessor?: NewsApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new NewsApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new NewsApiResponseProcessor();
    }

    /**
     * Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, images, videos, publish date, authors, language, source country, and sentiment of the news article.
     * Extract News
     * @param url The url of the news.
     * @param analyze Whether to analyze the news (extract entities etc.)
     */
    public extractNewsWithHttpInfo(url: string, analyze: boolean, _options?: Configuration): Observable<HttpInfo<ExtractNews200Response>> {
        const requestContextPromise = this.requestFactory.extractNews(url, analyze, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.extractNewsWithHttpInfo(rsp)));
            }));
    }

    /**
     * Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, images, videos, publish date, authors, language, source country, and sentiment of the news article.
     * Extract News
     * @param url The url of the news.
     * @param analyze Whether to analyze the news (extract entities etc.)
     */
    public extractNews(url: string, analyze: boolean, _options?: Configuration): Observable<ExtractNews200Response> {
        return this.extractNewsWithHttpInfo(url, analyze, _options).pipe(map((apiResponse: HttpInfo<ExtractNews200Response>) => apiResponse.data));
    }

    /**
     * Extract news links from a news website.
     * Extract News Links
     * @param url The url of the news.
     * @param analyze Whether to analyze the news (extract entities etc.)
     */
    public extractNewsLinksWithHttpInfo(url: string, analyze: boolean, _options?: Configuration): Observable<HttpInfo<ExtractNewsLinks200Response>> {
        const requestContextPromise = this.requestFactory.extractNewsLinks(url, analyze, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.extractNewsLinksWithHttpInfo(rsp)));
            }));
    }

    /**
     * Extract news links from a news website.
     * Extract News Links
     * @param url The url of the news.
     * @param analyze Whether to analyze the news (extract entities etc.)
     */
    public extractNewsLinks(url: string, analyze: boolean, _options?: Configuration): Observable<ExtractNewsLinks200Response> {
        return this.extractNewsLinksWithHttpInfo(url, analyze, _options).pipe(map((apiResponse: HttpInfo<ExtractNewsLinks200Response>) => apiResponse.data));
    }

    /**
     * Retrieve the latitude and longitude of a location name. Given this information you can fill the location-filter parameter in the news search endpoint.
     * Get Geo Coordinates
     * @param location The address or name of the location.
     */
    public getGeoCoordinatesWithHttpInfo(location: string, _options?: Configuration): Observable<HttpInfo<GetGeoCoordinates200Response>> {
        const requestContextPromise = this.requestFactory.getGeoCoordinates(location, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getGeoCoordinatesWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve the latitude and longitude of a location name. Given this information you can fill the location-filter parameter in the news search endpoint.
     * Get Geo Coordinates
     * @param location The address or name of the location.
     */
    public getGeoCoordinates(location: string, _options?: Configuration): Observable<GetGeoCoordinates200Response> {
        return this.getGeoCoordinatesWithHttpInfo(location, _options).pipe(map((apiResponse: HttpInfo<GetGeoCoordinates200Response>) => apiResponse.data));
    }

    /**
     * Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page.
     * News Website to RSS Feed
     * @param url The url of the news.
     * @param analyze Whether to analyze the news (extract entities etc.)
     */
    public newsWebsiteToRSSFeedWithHttpInfo(url: string, analyze: boolean, _options?: Configuration): Observable<HttpInfo<any>> {
        const requestContextPromise = this.requestFactory.newsWebsiteToRSSFeed(url, analyze, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.newsWebsiteToRSSFeedWithHttpInfo(rsp)));
            }));
    }

    /**
     * Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page.
     * News Website to RSS Feed
     * @param url The url of the news.
     * @param analyze Whether to analyze the news (extract entities etc.)
     */
    public newsWebsiteToRSSFeed(url: string, analyze: boolean, _options?: Configuration): Observable<any> {
        return this.newsWebsiteToRSSFeedWithHttpInfo(url, analyze, _options).pipe(map((apiResponse: HttpInfo<any>) => apiResponse.data));
    }

    /**
     * Retrieve information about one or more news articles by their ids. The ids can be retrieved from the search news or top news APIs.
     * Retrieve News Articles by Ids
     * @param ids A comma separated list of news ids.
     */
    public retrieveNewsArticlesByIdsWithHttpInfo(ids: string, _options?: Configuration): Observable<HttpInfo<RetrieveNewsArticlesByIds200Response>> {
        const requestContextPromise = this.requestFactory.retrieveNewsArticlesByIds(ids, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.retrieveNewsArticlesByIdsWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve information about one or more news articles by their ids. The ids can be retrieved from the search news or top news APIs.
     * Retrieve News Articles by Ids
     * @param ids A comma separated list of news ids.
     */
    public retrieveNewsArticlesByIds(ids: string, _options?: Configuration): Observable<RetrieveNewsArticlesByIds200Response> {
        return this.retrieveNewsArticlesByIdsWithHttpInfo(ids, _options).pipe(map((apiResponse: HttpInfo<RetrieveNewsArticlesByIds200Response>) => apiResponse.data));
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
    public searchNewsWithHttpInfo(text?: string, sourceCountries?: string, language?: string, minSentiment?: number, maxSentiment?: number, earliestPublishDate?: string, latestPublishDate?: string, newsSources?: string, authors?: string, entities?: string, locationFilter?: string, sort?: string, sortDirection?: string, offset?: number, number?: number, _options?: Configuration): Observable<HttpInfo<SearchNews200Response>> {
        const requestContextPromise = this.requestFactory.searchNews(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, entities, locationFilter, sort, sortDirection, offset, number, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.searchNewsWithHttpInfo(rsp)));
            }));
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
    public searchNews(text?: string, sourceCountries?: string, language?: string, minSentiment?: number, maxSentiment?: number, earliestPublishDate?: string, latestPublishDate?: string, newsSources?: string, authors?: string, entities?: string, locationFilter?: string, sort?: string, sortDirection?: string, offset?: number, number?: number, _options?: Configuration): Observable<SearchNews200Response> {
        return this.searchNewsWithHttpInfo(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, entities, locationFilter, sort, sortDirection, offset, number, _options).pipe(map((apiResponse: HttpInfo<SearchNews200Response>) => apiResponse.data));
    }

    /**
     * Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.
     * Top News
     * @param sourceCountry The ISO 3166 country code of the country for which top news should be retrieved.
     * @param language The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
     * @param date The date for which the top news should be retrieved. If no date is given, the current day is assumed.
     * @param headlinesOnly Whether to only return basic information such as id, title, and url of the news.
     */
    public topNewsWithHttpInfo(sourceCountry: string, language: string, date?: string, headlinesOnly?: boolean, _options?: Configuration): Observable<HttpInfo<TopNews200Response>> {
        const requestContextPromise = this.requestFactory.topNews(sourceCountry, language, date, headlinesOnly, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.topNewsWithHttpInfo(rsp)));
            }));
    }

    /**
     * Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.
     * Top News
     * @param sourceCountry The ISO 3166 country code of the country for which top news should be retrieved.
     * @param language The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
     * @param date The date for which the top news should be retrieved. If no date is given, the current day is assumed.
     * @param headlinesOnly Whether to only return basic information such as id, title, and url of the news.
     */
    public topNews(sourceCountry: string, language: string, date?: string, headlinesOnly?: boolean, _options?: Configuration): Observable<TopNews200Response> {
        return this.topNewsWithHttpInfo(sourceCountry, language, date, headlinesOnly, _options).pipe(map((apiResponse: HttpInfo<TopNews200Response>) => apiResponse.data));
    }

}
