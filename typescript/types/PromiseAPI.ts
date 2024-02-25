import { ResponseContext, RequestContext, HttpFile } from '../http/http';
import * as models from '../models/all';
import { Configuration} from '../configuration'

import { InlineResponse200 } from '../models/InlineResponse200';
import { InlineResponse2001 } from '../models/InlineResponse2001';
import { InlineResponse2002 } from '../models/InlineResponse2002';
import { InlineResponse2003 } from '../models/InlineResponse2003';
import { InlineResponse200News } from '../models/InlineResponse200News';
import { News } from '../models/News';
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
     * Extract a news entry from a news site.
     * Extract News
     * @param url The url of the news.
     * @param analyze Whether to analyze the news (extract entities etc.)
     */
    public extractNews(url: string, analyze: boolean, _options?: Configuration): Promise<InlineResponse2001> {
        const result = this.api.extractNews(url, analyze, _options);
        return result.toPromise();
    }

    /**
     * Extract a news links from a news website. 
     * Extract News Links
     * @param url The url from which links should be extracted.
     * @param apiKey Your API key.
     * @param prefix The prefix the news links must start with.
     * @param subDomain Whether to include links to news on sub-domains.
     */
    public extractNewsLinks(url: string, apiKey: string, prefix?: string, subDomain?: boolean, _options?: Configuration): Promise<InlineResponse2002> {
        const result = this.api.extractNewsLinks(url, apiKey, prefix, subDomain, _options);
        return result.toPromise();
    }

    /**
     * Get the geo coordinates for a location. The location can be an exact address but also just the name of a city or country.
     * Get Geo Coordinates
     * @param location The address or name of the location, e.g. Tokyo, Japan.
     */
    public geoCoordinates(location: string, _options?: Configuration): Promise<InlineResponse2003> {
        const result = this.api.geoCoordinates(location, _options);
        return result.toPromise();
    }

    /**
     * Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page. 
     * News Website to RSS Feed
     * @param url The url from which links should be extracted.
     * @param apiKey Your API key.
     * @param extractNews Whether extract news and add information such as description, publish date, and image to each item.
     */
    public newsWebsiteToRSSFeed(url: string, apiKey: string, extractNews?: boolean, _options?: Configuration): Promise<any> {
        const result = this.api.newsWebsiteToRSSFeed(url, apiKey, extractNews, _options);
        return result.toPromise();
    }

    /**
     * Search for news.
     * Search News
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
     */
    public searchNews(text?: string, sourceCountries?: string, language?: string, minSentiment?: number, maxSentiment?: number, earliestPublishDate?: string, latestPublishDate?: string, newsSources?: string, authors?: string, entities?: string, locationFilter?: string, offset?: number, number?: number, sort?: 'relevance' | 'publish-time' | 'sentiment', sortDirection?: 'asc' | 'desc', _options?: Configuration): Promise<InlineResponse200> {
        const result = this.api.searchNews(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, entities, locationFilter, offset, number, sort, sortDirection, _options);
        return result.toPromise();
    }


}



