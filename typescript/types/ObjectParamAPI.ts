import { ResponseContext, RequestContext, HttpFile, HttpInfo } from '../http/http';
import { Configuration} from '../configuration'

import { ExtractNews200Response } from '../models/ExtractNews200Response';
import { ExtractNews200ResponseImagesInner } from '../models/ExtractNews200ResponseImagesInner';
import { ExtractNews200ResponseVideosInner } from '../models/ExtractNews200ResponseVideosInner';
import { ExtractNewsLinks200Response } from '../models/ExtractNewsLinks200Response';
import { GetGeoCoordinates200Response } from '../models/GetGeoCoordinates200Response';
import { RetrieveNewsArticlesByIds200Response } from '../models/RetrieveNewsArticlesByIds200Response';
import { RetrieveNewsArticlesByIds200ResponseNewsInner } from '../models/RetrieveNewsArticlesByIds200ResponseNewsInner';
import { RetrieveNewspaperFrontPage200Response } from '../models/RetrieveNewspaperFrontPage200Response';
import { RetrieveNewspaperFrontPage200ResponseFrontPage } from '../models/RetrieveNewspaperFrontPage200ResponseFrontPage';
import { SearchNews200Response } from '../models/SearchNews200Response';
import { SearchNews200ResponseNewsInner } from '../models/SearchNews200ResponseNewsInner';
import { SearchNewsSources200Response } from '../models/SearchNewsSources200Response';
import { SearchNewsSources200ResponseSourcesInner } from '../models/SearchNewsSources200ResponseSourcesInner';
import { TopNews200Response } from '../models/TopNews200Response';
import { TopNews200ResponseTopNewsInner } from '../models/TopNews200ResponseTopNewsInner';
import { TopNews200ResponseTopNewsInnerNewsInner } from '../models/TopNews200ResponseTopNewsInnerNewsInner';

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
     * Whether to analyze the extracted news (extract entities, detect sentiment etc.)
     * @type boolean
     * @memberof NewsApiextractNews
     */
    analyze?: boolean
}

export interface NewsApiExtractNewsLinksRequest {
    /**
     * The url of the news.
     * @type string
     * @memberof NewsApiextractNewsLinks
     */
    url: string
    /**
     * Whether to analyze the extracted news (extract entities, detect sentiment etc.)
     * @type boolean
     * @memberof NewsApiextractNewsLinks
     */
    analyze?: boolean
}

export interface NewsApiGetGeoCoordinatesRequest {
    /**
     * The address or name of the location.
     * @type string
     * @memberof NewsApigetGeoCoordinates
     */
    location: string
}

export interface NewsApiNewsWebsiteToRSSFeedRequest {
    /**
     * The url of the site for which an RSS feed should be created.
     * @type string
     * @memberof NewsApinewsWebsiteToRSSFeed
     */
    url: string
    /**
     * Whether to extract the news for each link instead of just returning the link.
     * @type boolean
     * @memberof NewsApinewsWebsiteToRSSFeed
     */
    extractNews?: boolean
}

export interface NewsApiRetrieveNewsArticlesByIdsRequest {
    /**
     * A comma separated list of news ids.
     * @type string
     * @memberof NewsApiretrieveNewsArticlesByIds
     */
    ids: string
}

export interface NewsApiRetrieveNewspaperFrontPageRequest {
    /**
     * The ISO 3166 country code of the newspaper publication.
     * @type string
     * @memberof NewsApiretrieveNewspaperFrontPage
     */
    sourceCountry?: string
    /**
     * The identifier of the publication see attached list.
     * @type string
     * @memberof NewsApiretrieveNewspaperFrontPage
     */
    sourceName?: string
    /**
     * The date for which the front page should be retrieved. You can also go into the past, the earliest date is 2024-07-09.
     * @type string
     * @memberof NewsApiretrieveNewspaperFrontPage
     */
    date?: string
}

export interface NewsApiSearchNewsRequest {
    /**
     * The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford. You can also exclude terms by putting a minus sign (-) in front of the term, e.g. tesla -ford. For exact matches just put your term in quotes, e.g. \&quot;elon musk\&quot;.
     * @type string
     * @memberof NewsApisearchNews
     */
    text?: string
    /**
     * If a \&quot;text\&quot; is given to search for, you can specify where this text is searched for. Possible values are title, content, or both separated by a comma. By default, both title and content are searched.
     * @type string
     * @memberof NewsApisearchNews
     */
    textMatchIndexes?: string
    /**
     * The ISO 3166 country code from which the news should originate.
     * @type string
     * @memberof NewsApisearchNews
     */
    sourceCountry?: string
    /**
     * The ISO 6391 language code of the news.
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
     * A comma-separated list of news sources from which the news should originate.
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
     * A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other. Please note that the filter might leave out news, especially in non-English languages. If too few results are returned, use the text parameter instead.
     * @type string
     * @memberof NewsApisearchNews
     */
    categories?: string
    /**
     * Filter news by entities (see semantic types).
     * @type string
     * @memberof NewsApisearchNews
     */
    entities?: string
    /**
     * Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;. Radius must be between 1 and 100 kilometers.
     * @type string
     * @memberof NewsApisearchNews
     */
    locationFilter?: string
    /**
     * The sorting criteria (publish-time).
     * @type string
     * @memberof NewsApisearchNews
     */
    sort?: string
    /**
     * Whether to sort ascending or descending (ASC or DESC).
     * @type string
     * @memberof NewsApisearchNews
     */
    sortDirection?: string
    /**
     * The number of news to skip in range [0,100000]
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
}

export interface NewsApiSearchNewsSourcesRequest {
    /**
     * The (partial) name of the source.
     * @type string
     * @memberof NewsApisearchNewsSources
     */
    name: string
}

export interface NewsApiTopNewsRequest {
    /**
     * The ISO 3166 country code of the country for which top news should be retrieved.
     * @type string
     * @memberof NewsApitopNews
     */
    sourceCountry: string
    /**
     * The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
     * @type string
     * @memberof NewsApitopNews
     */
    language: string
    /**
     * The date for which the top news should be retrieved. If no date is given, the current day is assumed.
     * @type string
     * @memberof NewsApitopNews
     */
    date?: string
    /**
     * Whether to only return basic information such as id, title, and url of the news.
     * @type boolean
     * @memberof NewsApitopNews
     */
    headlinesOnly?: boolean
}

export class ObjectNewsApi {
    private api: ObservableNewsApi

    public constructor(configuration: Configuration, requestFactory?: NewsApiRequestFactory, responseProcessor?: NewsApiResponseProcessor) {
        this.api = new ObservableNewsApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, images, videos, publish date, authors, language, source country, and sentiment of the news article.
     * Extract News
     * @param param the request object
     */
    public extractNewsWithHttpInfo(param: NewsApiExtractNewsRequest, options?: Configuration): Promise<HttpInfo<ExtractNews200Response>> {
        return this.api.extractNewsWithHttpInfo(param.url, param.analyze,  options).toPromise();
    }

    /**
     * Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, images, videos, publish date, authors, language, source country, and sentiment of the news article.
     * Extract News
     * @param param the request object
     */
    public extractNews(param: NewsApiExtractNewsRequest, options?: Configuration): Promise<ExtractNews200Response> {
        return this.api.extractNews(param.url, param.analyze,  options).toPromise();
    }

    /**
     * Extract news links from a news website.
     * Extract News Links
     * @param param the request object
     */
    public extractNewsLinksWithHttpInfo(param: NewsApiExtractNewsLinksRequest, options?: Configuration): Promise<HttpInfo<ExtractNewsLinks200Response>> {
        return this.api.extractNewsLinksWithHttpInfo(param.url, param.analyze,  options).toPromise();
    }

    /**
     * Extract news links from a news website.
     * Extract News Links
     * @param param the request object
     */
    public extractNewsLinks(param: NewsApiExtractNewsLinksRequest, options?: Configuration): Promise<ExtractNewsLinks200Response> {
        return this.api.extractNewsLinks(param.url, param.analyze,  options).toPromise();
    }

    /**
     * Retrieve the latitude and longitude of a location name. Given this information you can fill the location-filter parameter in the news search endpoint.
     * Get Geo Coordinates
     * @param param the request object
     */
    public getGeoCoordinatesWithHttpInfo(param: NewsApiGetGeoCoordinatesRequest, options?: Configuration): Promise<HttpInfo<GetGeoCoordinates200Response>> {
        return this.api.getGeoCoordinatesWithHttpInfo(param.location,  options).toPromise();
    }

    /**
     * Retrieve the latitude and longitude of a location name. Given this information you can fill the location-filter parameter in the news search endpoint.
     * Get Geo Coordinates
     * @param param the request object
     */
    public getGeoCoordinates(param: NewsApiGetGeoCoordinatesRequest, options?: Configuration): Promise<GetGeoCoordinates200Response> {
        return this.api.getGeoCoordinates(param.location,  options).toPromise();
    }

    /**
     * Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page.
     * News Website to RSS Feed
     * @param param the request object
     */
    public newsWebsiteToRSSFeedWithHttpInfo(param: NewsApiNewsWebsiteToRSSFeedRequest, options?: Configuration): Promise<HttpInfo<any>> {
        return this.api.newsWebsiteToRSSFeedWithHttpInfo(param.url, param.extractNews,  options).toPromise();
    }

    /**
     * Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page.
     * News Website to RSS Feed
     * @param param the request object
     */
    public newsWebsiteToRSSFeed(param: NewsApiNewsWebsiteToRSSFeedRequest, options?: Configuration): Promise<any> {
        return this.api.newsWebsiteToRSSFeed(param.url, param.extractNews,  options).toPromise();
    }

    /**
     * Retrieve information about one or more news articles by their ids. The ids can be retrieved from the search news or top news APIs.
     * Retrieve News Articles by Ids
     * @param param the request object
     */
    public retrieveNewsArticlesByIdsWithHttpInfo(param: NewsApiRetrieveNewsArticlesByIdsRequest, options?: Configuration): Promise<HttpInfo<RetrieveNewsArticlesByIds200Response>> {
        return this.api.retrieveNewsArticlesByIdsWithHttpInfo(param.ids,  options).toPromise();
    }

    /**
     * Retrieve information about one or more news articles by their ids. The ids can be retrieved from the search news or top news APIs.
     * Retrieve News Articles by Ids
     * @param param the request object
     */
    public retrieveNewsArticlesByIds(param: NewsApiRetrieveNewsArticlesByIdsRequest, options?: Configuration): Promise<RetrieveNewsArticlesByIds200Response> {
        return this.api.retrieveNewsArticlesByIds(param.ids,  options).toPromise();
    }

    /**
     * Get the front pages of newspapers from around the world. The API provides images of the front pages of newspapers from different countries. Here\'s an example of some of today\'s newspapers:
     * Retrieve Newspaper Front Page
     * @param param the request object
     */
    public retrieveNewspaperFrontPageWithHttpInfo(param: NewsApiRetrieveNewspaperFrontPageRequest = {}, options?: Configuration): Promise<HttpInfo<RetrieveNewspaperFrontPage200Response>> {
        return this.api.retrieveNewspaperFrontPageWithHttpInfo(param.sourceCountry, param.sourceName, param.date,  options).toPromise();
    }

    /**
     * Get the front pages of newspapers from around the world. The API provides images of the front pages of newspapers from different countries. Here\'s an example of some of today\'s newspapers:
     * Retrieve Newspaper Front Page
     * @param param the request object
     */
    public retrieveNewspaperFrontPage(param: NewsApiRetrieveNewspaperFrontPageRequest = {}, options?: Configuration): Promise<RetrieveNewspaperFrontPage200Response> {
        return this.api.retrieveNewspaperFrontPage(param.sourceCountry, param.sourceName, param.date,  options).toPromise();
    }

    /**
     * Search and filter news by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. Each returned article includes the title, the full text of the article, a summary, image URL, video URL, the publish date, the authors, the category, the language, the source country, and the sentiment of the article. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
     * Search News
     * @param param the request object
     */
    public searchNewsWithHttpInfo(param: NewsApiSearchNewsRequest = {}, options?: Configuration): Promise<HttpInfo<SearchNews200Response>> {
        return this.api.searchNewsWithHttpInfo(param.text, param.textMatchIndexes, param.sourceCountry, param.language, param.minSentiment, param.maxSentiment, param.earliestPublishDate, param.latestPublishDate, param.newsSources, param.authors, param.categories, param.entities, param.locationFilter, param.sort, param.sortDirection, param.offset, param.number,  options).toPromise();
    }

    /**
     * Search and filter news by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. Each returned article includes the title, the full text of the article, a summary, image URL, video URL, the publish date, the authors, the category, the language, the source country, and the sentiment of the article. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
     * Search News
     * @param param the request object
     */
    public searchNews(param: NewsApiSearchNewsRequest = {}, options?: Configuration): Promise<SearchNews200Response> {
        return this.api.searchNews(param.text, param.textMatchIndexes, param.sourceCountry, param.language, param.minSentiment, param.maxSentiment, param.earliestPublishDate, param.latestPublishDate, param.newsSources, param.authors, param.categories, param.entities, param.locationFilter, param.sort, param.sortDirection, param.offset, param.number,  options).toPromise();
    }

    /**
     * Search whether a news source is being monitored by the World News API. This API is useful if you want to know if a specific news source is available in the API.
     * Search News Sources
     * @param param the request object
     */
    public searchNewsSourcesWithHttpInfo(param: NewsApiSearchNewsSourcesRequest, options?: Configuration): Promise<HttpInfo<SearchNewsSources200Response>> {
        return this.api.searchNewsSourcesWithHttpInfo(param.name,  options).toPromise();
    }

    /**
     * Search whether a news source is being monitored by the World News API. This API is useful if you want to know if a specific news source is available in the API.
     * Search News Sources
     * @param param the request object
     */
    public searchNewsSources(param: NewsApiSearchNewsSourcesRequest, options?: Configuration): Promise<SearchNewsSources200Response> {
        return this.api.searchNewsSources(param.name,  options).toPromise();
    }

    /**
     * Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.
     * Top News
     * @param param the request object
     */
    public topNewsWithHttpInfo(param: NewsApiTopNewsRequest, options?: Configuration): Promise<HttpInfo<TopNews200Response>> {
        return this.api.topNewsWithHttpInfo(param.sourceCountry, param.language, param.date, param.headlinesOnly,  options).toPromise();
    }

    /**
     * Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.
     * Top News
     * @param param the request object
     */
    public topNews(param: NewsApiTopNewsRequest, options?: Configuration): Promise<TopNews200Response> {
        return this.api.topNews(param.sourceCountry, param.language, param.date, param.headlinesOnly,  options).toPromise();
    }

}
