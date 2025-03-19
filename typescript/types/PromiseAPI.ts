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
import { ObservableNewsApi } from './ObservableAPI';

import { NewsApiRequestFactory, NewsApiResponseProcessor} from "../apis/NewsApi";
export class PromiseNewsApi {
    private api: ObservableNewsApi

    public constructor(
        configuration: Configuration,
        requestFactory?: NewsApiRequestFactory,
        responseProcessor?: NewsApiResponseProcessor
    ) {
        this.api = new ObservableNewsApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, images, videos, publish date, authors, language, source country, and sentiment of the news article.
     * Extract News
     * @param url The url of the news.
     * @param analyze Whether to analyze the extracted news (extract entities, detect sentiment etc.)
     */
    public extractNewsWithHttpInfo(url: string, analyze?: boolean, _options?: Configuration): Promise<HttpInfo<ExtractNews200Response>> {
        const result = this.api.extractNewsWithHttpInfo(url, analyze, _options);
        return result.toPromise();
    }

    /**
     * Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, images, videos, publish date, authors, language, source country, and sentiment of the news article.
     * Extract News
     * @param url The url of the news.
     * @param analyze Whether to analyze the extracted news (extract entities, detect sentiment etc.)
     */
    public extractNews(url: string, analyze?: boolean, _options?: Configuration): Promise<ExtractNews200Response> {
        const result = this.api.extractNews(url, analyze, _options);
        return result.toPromise();
    }

    /**
     * Extract news links from a news website.
     * Extract News Links
     * @param url The url of the news.
     * @param analyze Whether to analyze the extracted news (extract entities, detect sentiment etc.)
     */
    public extractNewsLinksWithHttpInfo(url: string, analyze?: boolean, _options?: Configuration): Promise<HttpInfo<ExtractNewsLinks200Response>> {
        const result = this.api.extractNewsLinksWithHttpInfo(url, analyze, _options);
        return result.toPromise();
    }

    /**
     * Extract news links from a news website.
     * Extract News Links
     * @param url The url of the news.
     * @param analyze Whether to analyze the extracted news (extract entities, detect sentiment etc.)
     */
    public extractNewsLinks(url: string, analyze?: boolean, _options?: Configuration): Promise<ExtractNewsLinks200Response> {
        const result = this.api.extractNewsLinks(url, analyze, _options);
        return result.toPromise();
    }

    /**
     * Retrieve the latitude and longitude of a location name. Given this information you can fill the location-filter parameter in the news search endpoint.
     * Get Geo Coordinates
     * @param location The address or name of the location.
     */
    public getGeoCoordinatesWithHttpInfo(location: string, _options?: Configuration): Promise<HttpInfo<GetGeoCoordinates200Response>> {
        const result = this.api.getGeoCoordinatesWithHttpInfo(location, _options);
        return result.toPromise();
    }

    /**
     * Retrieve the latitude and longitude of a location name. Given this information you can fill the location-filter parameter in the news search endpoint.
     * Get Geo Coordinates
     * @param location The address or name of the location.
     */
    public getGeoCoordinates(location: string, _options?: Configuration): Promise<GetGeoCoordinates200Response> {
        const result = this.api.getGeoCoordinates(location, _options);
        return result.toPromise();
    }

    /**
     * Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page.
     * News Website to RSS Feed
     * @param url The url of the site for which an RSS feed should be created.
     * @param extractNews Whether to extract the news for each link instead of just returning the link.
     */
    public newsWebsiteToRSSFeedWithHttpInfo(url: string, extractNews?: boolean, _options?: Configuration): Promise<HttpInfo<any>> {
        const result = this.api.newsWebsiteToRSSFeedWithHttpInfo(url, extractNews, _options);
        return result.toPromise();
    }

    /**
     * Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page.
     * News Website to RSS Feed
     * @param url The url of the site for which an RSS feed should be created.
     * @param extractNews Whether to extract the news for each link instead of just returning the link.
     */
    public newsWebsiteToRSSFeed(url: string, extractNews?: boolean, _options?: Configuration): Promise<any> {
        const result = this.api.newsWebsiteToRSSFeed(url, extractNews, _options);
        return result.toPromise();
    }

    /**
     * Retrieve information about one or more news articles by their ids. The ids can be retrieved from the search news or top news APIs.
     * Retrieve News Articles by Ids
     * @param ids A comma separated list of news ids.
     */
    public retrieveNewsArticlesByIdsWithHttpInfo(ids: string, _options?: Configuration): Promise<HttpInfo<RetrieveNewsArticlesByIds200Response>> {
        const result = this.api.retrieveNewsArticlesByIdsWithHttpInfo(ids, _options);
        return result.toPromise();
    }

    /**
     * Retrieve information about one or more news articles by their ids. The ids can be retrieved from the search news or top news APIs.
     * Retrieve News Articles by Ids
     * @param ids A comma separated list of news ids.
     */
    public retrieveNewsArticlesByIds(ids: string, _options?: Configuration): Promise<RetrieveNewsArticlesByIds200Response> {
        const result = this.api.retrieveNewsArticlesByIds(ids, _options);
        return result.toPromise();
    }

    /**
     * Get the front pages of newspapers from around the world. The API provides images of the front pages of newspapers from different countries. Here\'s an example of some of today\'s newspapers:
     * Retrieve Newspaper Front Page
     * @param sourceCountry The ISO 3166 country code of the newspaper publication.
     * @param sourceName The identifier of the publication see attached list.
     * @param date The date for which the front page should be retrieved. You can also go into the past, the earliest date is 2024-07-09.
     */
    public retrieveNewspaperFrontPageWithHttpInfo(sourceCountry?: string, sourceName?: string, date?: string, _options?: Configuration): Promise<HttpInfo<RetrieveNewspaperFrontPage200Response>> {
        const result = this.api.retrieveNewspaperFrontPageWithHttpInfo(sourceCountry, sourceName, date, _options);
        return result.toPromise();
    }

    /**
     * Get the front pages of newspapers from around the world. The API provides images of the front pages of newspapers from different countries. Here\'s an example of some of today\'s newspapers:
     * Retrieve Newspaper Front Page
     * @param sourceCountry The ISO 3166 country code of the newspaper publication.
     * @param sourceName The identifier of the publication see attached list.
     * @param date The date for which the front page should be retrieved. You can also go into the past, the earliest date is 2024-07-09.
     */
    public retrieveNewspaperFrontPage(sourceCountry?: string, sourceName?: string, date?: string, _options?: Configuration): Promise<RetrieveNewspaperFrontPage200Response> {
        const result = this.api.retrieveNewspaperFrontPage(sourceCountry, sourceName, date, _options);
        return result.toPromise();
    }

    /**
     * Search and filter news by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. Each returned article includes the title, the full text of the article, a summary, image URL, video URL, the publish date, the authors, the category, the language, the source country, and the sentiment of the article. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
     * Search News
     * @param text The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford. You can also exclude terms by putting a minus sign (-) in front of the term, e.g. tesla -ford. For exact matches just put your term in quotes, e.g. \&quot;elon musk\&quot;.
     * @param textMatchIndexes If a \&quot;text\&quot; is given to search for, you can specify where this text is searched for. Possible values are title, content, or both separated by a comma. By default, both title and content are searched.
     * @param sourceCountry The ISO 3166 country code from which the news should originate.
     * @param language The ISO 6391 language code of the news.
     * @param minSentiment The minimal sentiment of the news in range [-1,1].
     * @param maxSentiment The maximal sentiment of the news in range [-1,1].
     * @param earliestPublishDate The news must have been published after this date.
     * @param latestPublishDate The news must have been published before this date.
     * @param newsSources A comma-separated list of news sources from which the news should originate.
     * @param authors A comma-separated list of author names. Only news from any of the given authors will be returned.
     * @param categories A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other. Please note that the filter might leave out news, especially in non-English languages. If too few results are returned, use the text parameter instead.
     * @param entities Filter news by entities (see semantic types).
     * @param locationFilter Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;. Radius must be between 1 and 100 kilometers.
     * @param sort The sorting criteria (publish-time).
     * @param sortDirection Whether to sort ascending or descending (ASC or DESC).
     * @param offset The number of news to skip in range [0,100000]
     * @param number The number of news to return in range [1,100]
     */
    public searchNewsWithHttpInfo(text?: string, textMatchIndexes?: string, sourceCountry?: string, language?: string, minSentiment?: number, maxSentiment?: number, earliestPublishDate?: string, latestPublishDate?: string, newsSources?: string, authors?: string, categories?: string, entities?: string, locationFilter?: string, sort?: string, sortDirection?: string, offset?: number, number?: number, _options?: Configuration): Promise<HttpInfo<SearchNews200Response>> {
        const result = this.api.searchNewsWithHttpInfo(text, textMatchIndexes, sourceCountry, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, categories, entities, locationFilter, sort, sortDirection, offset, number, _options);
        return result.toPromise();
    }

    /**
     * Search and filter news by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. Each returned article includes the title, the full text of the article, a summary, image URL, video URL, the publish date, the authors, the category, the language, the source country, and the sentiment of the article. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
     * Search News
     * @param text The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford. You can also exclude terms by putting a minus sign (-) in front of the term, e.g. tesla -ford. For exact matches just put your term in quotes, e.g. \&quot;elon musk\&quot;.
     * @param textMatchIndexes If a \&quot;text\&quot; is given to search for, you can specify where this text is searched for. Possible values are title, content, or both separated by a comma. By default, both title and content are searched.
     * @param sourceCountry The ISO 3166 country code from which the news should originate.
     * @param language The ISO 6391 language code of the news.
     * @param minSentiment The minimal sentiment of the news in range [-1,1].
     * @param maxSentiment The maximal sentiment of the news in range [-1,1].
     * @param earliestPublishDate The news must have been published after this date.
     * @param latestPublishDate The news must have been published before this date.
     * @param newsSources A comma-separated list of news sources from which the news should originate.
     * @param authors A comma-separated list of author names. Only news from any of the given authors will be returned.
     * @param categories A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other. Please note that the filter might leave out news, especially in non-English languages. If too few results are returned, use the text parameter instead.
     * @param entities Filter news by entities (see semantic types).
     * @param locationFilter Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;. Radius must be between 1 and 100 kilometers.
     * @param sort The sorting criteria (publish-time).
     * @param sortDirection Whether to sort ascending or descending (ASC or DESC).
     * @param offset The number of news to skip in range [0,100000]
     * @param number The number of news to return in range [1,100]
     */
    public searchNews(text?: string, textMatchIndexes?: string, sourceCountry?: string, language?: string, minSentiment?: number, maxSentiment?: number, earliestPublishDate?: string, latestPublishDate?: string, newsSources?: string, authors?: string, categories?: string, entities?: string, locationFilter?: string, sort?: string, sortDirection?: string, offset?: number, number?: number, _options?: Configuration): Promise<SearchNews200Response> {
        const result = this.api.searchNews(text, textMatchIndexes, sourceCountry, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, categories, entities, locationFilter, sort, sortDirection, offset, number, _options);
        return result.toPromise();
    }

    /**
     * Search whether a news source is being monitored by the World News API. This API is useful if you want to know if a specific news source is available in the API.
     * Search News Sources
     * @param name The (partial) name of the source.
     */
    public searchNewsSourcesWithHttpInfo(name: string, _options?: Configuration): Promise<HttpInfo<SearchNewsSources200Response>> {
        const result = this.api.searchNewsSourcesWithHttpInfo(name, _options);
        return result.toPromise();
    }

    /**
     * Search whether a news source is being monitored by the World News API. This API is useful if you want to know if a specific news source is available in the API.
     * Search News Sources
     * @param name The (partial) name of the source.
     */
    public searchNewsSources(name: string, _options?: Configuration): Promise<SearchNewsSources200Response> {
        const result = this.api.searchNewsSources(name, _options);
        return result.toPromise();
    }

    /**
     * Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.
     * Top News
     * @param sourceCountry The ISO 3166 country code of the country for which top news should be retrieved.
     * @param language The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
     * @param date The date for which the top news should be retrieved. If no date is given, the current day is assumed.
     * @param headlinesOnly Whether to only return basic information such as id, title, and url of the news.
     */
    public topNewsWithHttpInfo(sourceCountry: string, language: string, date?: string, headlinesOnly?: boolean, _options?: Configuration): Promise<HttpInfo<TopNews200Response>> {
        const result = this.api.topNewsWithHttpInfo(sourceCountry, language, date, headlinesOnly, _options);
        return result.toPromise();
    }

    /**
     * Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.
     * Top News
     * @param sourceCountry The ISO 3166 country code of the country for which top news should be retrieved.
     * @param language The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
     * @param date The date for which the top news should be retrieved. If no date is given, the current day is assumed.
     * @param headlinesOnly Whether to only return basic information such as id, title, and url of the news.
     */
    public topNews(sourceCountry: string, language: string, date?: string, headlinesOnly?: boolean, _options?: Configuration): Promise<TopNews200Response> {
        const result = this.api.topNews(sourceCountry, language, date, headlinesOnly, _options);
        return result.toPromise();
    }


}



