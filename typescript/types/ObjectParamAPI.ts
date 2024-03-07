import { ResponseContext, RequestContext, HttpFile, HttpInfo } from '../http/http';
import { Configuration} from '../configuration'

import { ExtractLinksResponse } from '../models/ExtractLinksResponse';
import { ExtractNewsResponse } from '../models/ExtractNewsResponse';
import { GeoCoordinatesResponse } from '../models/GeoCoordinatesResponse';
import { News } from '../models/News';
import { NewsArticle } from '../models/NewsArticle';
import { SearchNewsResponse } from '../models/SearchNewsResponse';

import { ObservableNewsApi } from "./ObservableAPI";
import { NewsApiRequestFactory, NewsApiResponseProcessor} from "../apis/NewsApi";

export interface NewsApiExtractNewsRequest {
    /**
     * The url of the news.
     * @type string
     * @memberof NewsApiextractNews
     */
    url: string
    /**
     * Whether to analyze the news (extract entities etc.)
     * @type boolean
     * @memberof NewsApiextractNews
     */
    analyze: boolean
}

export interface NewsApiExtractNewsLinksRequest {
    /**
     * The url from which links should be extracted.
     * @type string
     * @memberof NewsApiextractNewsLinks
     */
    url: string
    /**
     * Your API key.
     * @type string
     * @memberof NewsApiextractNewsLinks
     */
    apiKey: string
    /**
     * The prefix the news links must start with.
     * @type string
     * @memberof NewsApiextractNewsLinks
     */
    prefix?: string
    /**
     * Whether to include links to news on sub-domains.
     * @type boolean
     * @memberof NewsApiextractNewsLinks
     */
    subDomain?: boolean
}

export interface NewsApiGeoCoordinatesRequest {
    /**
     * The address or name of the location, e.g. Tokyo, Japan.
     * @type string
     * @memberof NewsApigeoCoordinates
     */
    location: string
}

export interface NewsApiNewsWebsiteToRSSFeedRequest {
    /**
     * The url from which links should be extracted.
     * @type string
     * @memberof NewsApinewsWebsiteToRSSFeed
     */
    url: string
    /**
     * Your API key.
     * @type string
     * @memberof NewsApinewsWebsiteToRSSFeed
     */
    apiKey: string
    /**
     * Whether extract news and add information such as description, publish date, and image to each item.
     * @type boolean
     * @memberof NewsApinewsWebsiteToRSSFeed
     */
    extractNews?: boolean
}

export interface NewsApiSearchNewsRequest {
    /**
     * The text to match in the news content.
     * @type string
     * @memberof NewsApisearchNews
     */
    text?: string
    /**
     * A comma-separated list of ISO 3166 country codes from which the news should originate, e.g. gb,us.
     * @type string
     * @memberof NewsApisearchNews
     */
    sourceCountries?: string
    /**
     * The ISO 6391 language code of the news, e.g. \&quot;en\&quot; for English.
     * @type string
     * @memberof NewsApisearchNews
     */
    language?: string
    /**
     * The minimal sentiment of the news in range [-1,1].
     * @type number
     * @memberof NewsApisearchNews
     */
    minSentiment?: number
    /**
     * The maximal sentiment of the news in range [-1,1].
     * @type number
     * @memberof NewsApisearchNews
     */
    maxSentiment?: number
    /**
     * The news must have been published after this date.
     * @type string
     * @memberof NewsApisearchNews
     */
    earliestPublishDate?: string
    /**
     * The news must have been published before this date.
     * @type string
     * @memberof NewsApisearchNews
     */
    latestPublishDate?: string
    /**
     * A comma-separated list of news sources from which the news should originate, e.g. https://www.bbc.co.uk
     * @type string
     * @memberof NewsApisearchNews
     */
    newsSources?: string
    /**
     * A comma-separated list of author names. Only news from any of the given authors will be returned.
     * @type string
     * @memberof NewsApisearchNews
     */
    authors?: string
    /**
     * Filter news by entities, e.g. ORG:Tesla.
     * @type string
     * @memberof NewsApisearchNews
     */
    entities?: string
    /**
     * Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;, e.g. 51.050407, 13.737262, 100
     * @type string
     * @memberof NewsApisearchNews
     */
    locationFilter?: string
    /**
     * The number of news to skip in range [0,1000]
     * @type number
     * @memberof NewsApisearchNews
     */
    offset?: number
    /**
     * The number of news to return in range [1,100]
     * @type number
     * @memberof NewsApisearchNews
     */
    number?: number
    /**
     * The sorting criteria.
     * @type &#39;relevance&#39; | &#39;publish-time&#39; | &#39;sentiment&#39;
     * @memberof NewsApisearchNews
     */
    sort?: 'relevance' | 'publish-time' | 'sentiment'
    /**
     * Whether to sort ascending or descending.
     * @type &#39;asc&#39; | &#39;desc&#39;
     * @memberof NewsApisearchNews
     */
    sortDirection?: 'asc' | 'desc'
}

export class ObjectNewsApi {
    private api: ObservableNewsApi

    public constructor(configuration: Configuration, requestFactory?: NewsApiRequestFactory, responseProcessor?: NewsApiResponseProcessor) {
        this.api = new ObservableNewsApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Extract a news entry from a news site.
     * Extract News
     * @param param the request object
     */
    public extractNewsWithHttpInfo(param: NewsApiExtractNewsRequest, options?: Configuration): Promise<HttpInfo<ExtractNewsResponse>> {
        return this.api.extractNewsWithHttpInfo(param.url, param.analyze,  options).toPromise();
    }

    /**
     * Extract a news entry from a news site.
     * Extract News
     * @param param the request object
     */
    public extractNews(param: NewsApiExtractNewsRequest, options?: Configuration): Promise<ExtractNewsResponse> {
        return this.api.extractNews(param.url, param.analyze,  options).toPromise();
    }

    /**
     * Extract a news links from a news website. 
     * Extract News Links
     * @param param the request object
     */
    public extractNewsLinksWithHttpInfo(param: NewsApiExtractNewsLinksRequest, options?: Configuration): Promise<HttpInfo<ExtractLinksResponse>> {
        return this.api.extractNewsLinksWithHttpInfo(param.url, param.apiKey, param.prefix, param.subDomain,  options).toPromise();
    }

    /**
     * Extract a news links from a news website. 
     * Extract News Links
     * @param param the request object
     */
    public extractNewsLinks(param: NewsApiExtractNewsLinksRequest, options?: Configuration): Promise<ExtractLinksResponse> {
        return this.api.extractNewsLinks(param.url, param.apiKey, param.prefix, param.subDomain,  options).toPromise();
    }

    /**
     * Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country.
     * Get Geo Coordinates
     * @param param the request object
     */
    public geoCoordinatesWithHttpInfo(param: NewsApiGeoCoordinatesRequest, options?: Configuration): Promise<HttpInfo<GeoCoordinatesResponse>> {
        return this.api.geoCoordinatesWithHttpInfo(param.location,  options).toPromise();
    }

    /**
     * Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country.
     * Get Geo Coordinates
     * @param param the request object
     */
    public geoCoordinates(param: NewsApiGeoCoordinatesRequest, options?: Configuration): Promise<GeoCoordinatesResponse> {
        return this.api.geoCoordinates(param.location,  options).toPromise();
    }

    /**
     * Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page. 
     * News Website to RSS Feed
     * @param param the request object
     */
    public newsWebsiteToRSSFeedWithHttpInfo(param: NewsApiNewsWebsiteToRSSFeedRequest, options?: Configuration): Promise<HttpInfo<any>> {
        return this.api.newsWebsiteToRSSFeedWithHttpInfo(param.url, param.apiKey, param.extractNews,  options).toPromise();
    }

    /**
     * Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page. 
     * News Website to RSS Feed
     * @param param the request object
     */
    public newsWebsiteToRSSFeed(param: NewsApiNewsWebsiteToRSSFeedRequest, options?: Configuration): Promise<any> {
        return this.api.newsWebsiteToRSSFeed(param.url, param.apiKey, param.extractNews,  options).toPromise();
    }

    /**
     * Search for news.
     * Search News
     * @param param the request object
     */
    public searchNewsWithHttpInfo(param: NewsApiSearchNewsRequest = {}, options?: Configuration): Promise<HttpInfo<SearchNewsResponse>> {
        return this.api.searchNewsWithHttpInfo(param.text, param.sourceCountries, param.language, param.minSentiment, param.maxSentiment, param.earliestPublishDate, param.latestPublishDate, param.newsSources, param.authors, param.entities, param.locationFilter, param.offset, param.number, param.sort, param.sortDirection,  options).toPromise();
    }

    /**
     * Search for news.
     * Search News
     * @param param the request object
     */
    public searchNews(param: NewsApiSearchNewsRequest = {}, options?: Configuration): Promise<SearchNewsResponse> {
        return this.api.searchNews(param.text, param.sourceCountries, param.language, param.minSentiment, param.maxSentiment, param.earliestPublishDate, param.latestPublishDate, param.newsSources, param.authors, param.entities, param.locationFilter, param.offset, param.number, param.sort, param.sortDirection,  options).toPromise();
    }

}
