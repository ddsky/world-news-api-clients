/*
 * World News API
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 1.3.0
 * Contact: mail@worldnewsapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.worldnewsapi;

import com.worldnewsapi.client.ApiException;
import com.worldnewsapi.client.model.ExtractNews200Response;
import com.worldnewsapi.client.model.ExtractNewsLinks200Response;
import com.worldnewsapi.client.model.GetGeoCoordinates200Response;
import com.worldnewsapi.client.model.NewspaperFrontPages200Response;
import com.worldnewsapi.client.model.RetrieveNewsArticlesByIds200Response;
import com.worldnewsapi.client.model.SearchNews200Response;
import com.worldnewsapi.client.model.TopNews200Response;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for NewsApi
 */
@Disabled
public class NewsApiTest {

    private final NewsApi api = new NewsApi();

    /**
     * Extract News
     *
     * Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, images, videos, publish date, authors, language, source country, and sentiment of the news article.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void extractNewsTest() throws ApiException {
        String url = null;
        Boolean analyze = null;
        ExtractNews200Response response = api.extractNews(url, analyze);
        // TODO: test validations
    }

    /**
     * Extract News Links
     *
     * Extract news links from a news website.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void extractNewsLinksTest() throws ApiException {
        String url = null;
        Boolean analyze = null;
        ExtractNewsLinks200Response response = api.extractNewsLinks(url, analyze);
        // TODO: test validations
    }

    /**
     * Get Geo Coordinates
     *
     * Retrieve the latitude and longitude of a location name. Given this information you can fill the location-filter parameter in the news search endpoint.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void getGeoCoordinatesTest() throws ApiException {
        String location = null;
        GetGeoCoordinates200Response response = api.getGeoCoordinates(location);
        // TODO: test validations
    }

    /**
     * News Website to RSS Feed
     *
     * Turn a news website into an RSS feed. Any page of a news website can be turned into an RSS feed. Provide the URL to the page and the API will return an RSS feed with the latest news from that page.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void newsWebsiteToRSSFeedTest() throws ApiException {
        String url = null;
        Boolean analyze = null;
        Object response = api.newsWebsiteToRSSFeed(url, analyze);
        // TODO: test validations
    }

    /**
     * Newspaper Front Pages
     *
     * Get the front pages of newspapers from around the world. The API provides images of the front pages of newspapers from different countries. Here&#39;s an example of some of today&#39;s newspapers:
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void newspaperFrontPagesTest() throws ApiException {
        String sourceCountry = null;
        String sourceName = null;
        String date = null;
        NewspaperFrontPages200Response response = api.newspaperFrontPages(sourceCountry, sourceName, date);
        // TODO: test validations
    }

    /**
     * Retrieve News Articles by Ids
     *
     * Retrieve information about one or more news articles by their ids. The ids can be retrieved from the search news or top news APIs.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void retrieveNewsArticlesByIdsTest() throws ApiException {
        String ids = null;
        RetrieveNewsArticlesByIds200Response response = api.retrieveNewsArticlesByIds(ids);
        // TODO: test validations
    }

    /**
     * Search News
     *
     * Search and filter news by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void searchNewsTest() throws ApiException {
        String text = null;
        String sourceCountries = null;
        String language = null;
        Double minSentiment = null;
        Double maxSentiment = null;
        String earliestPublishDate = null;
        String latestPublishDate = null;
        String newsSources = null;
        String authors = null;
        String categories = null;
        String entities = null;
        String locationFilter = null;
        String sort = null;
        String sortDirection = null;
        Integer offset = null;
        Integer number = null;
        SearchNews200Response response = api.searchNews(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, categories, entities, locationFilter, sort, sortDirection, offset, number);
        // TODO: test validations
    }

    /**
     * Top News
     *
     * Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void topNewsTest() throws ApiException {
        String sourceCountry = null;
        String language = null;
        String date = null;
        Boolean headlinesOnly = null;
        TopNews200Response response = api.topNews(sourceCountry, language, date, headlinesOnly);
        // TODO: test validations
    }

}
