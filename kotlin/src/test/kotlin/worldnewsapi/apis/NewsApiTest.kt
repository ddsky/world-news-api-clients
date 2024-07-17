/**
 *
 * Please note:
 * This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * Do not edit this file manually.
 *
 */

@file:Suppress(
    "ArrayInDataClass",
    "EnumEntryName",
    "RemoveRedundantQualifierName",
    "UnusedImport"
)

package worldnewsapi.apis

import io.kotlintest.shouldBe
import io.kotlintest.specs.ShouldSpec

import worldnewsapi.apis.NewsApi
import worldnewsapi.models.ExtractNews200Response
import worldnewsapi.models.ExtractNewsLinks200Response
import worldnewsapi.models.GetGeoCoordinates200Response
import worldnewsapi.models.NewspaperFrontPages200Response
import worldnewsapi.models.RetrieveNewsArticlesByIds200Response
import worldnewsapi.models.SearchNews200Response
import worldnewsapi.models.TopNews200Response

class NewsApiTest : ShouldSpec() {
    init {
        // uncomment below to create an instance of NewsApi
        //val apiInstance = NewsApi()

        // to test extractNews
        should("test extractNews") {
            // uncomment below to test extractNews
            //val url : kotlin.String = https://www.bbc.com/news/world-us-canada-59340789 // kotlin.String | The url of the news.
            //val analyze : kotlin.Boolean = true // kotlin.Boolean | Whether to analyze the news (extract entities etc.)
            //val result : ExtractNews200Response = apiInstance.extractNews(url, analyze)
            //result shouldBe ("TODO")
        }

        // to test extractNewsLinks
        should("test extractNewsLinks") {
            // uncomment below to test extractNewsLinks
            //val url : kotlin.String = https://www.bbc.com/news/world-us-canada-59340789 // kotlin.String | The url of the news.
            //val analyze : kotlin.Boolean = true // kotlin.Boolean | Whether to analyze the news (extract entities etc.)
            //val result : ExtractNewsLinks200Response = apiInstance.extractNewsLinks(url, analyze)
            //result shouldBe ("TODO")
        }

        // to test getGeoCoordinates
        should("test getGeoCoordinates") {
            // uncomment below to test getGeoCoordinates
            //val location : kotlin.String = Tokyo, Japan // kotlin.String | The address or name of the location.
            //val result : GetGeoCoordinates200Response = apiInstance.getGeoCoordinates(location)
            //result shouldBe ("TODO")
        }

        // to test newsWebsiteToRSSFeed
        should("test newsWebsiteToRSSFeed") {
            // uncomment below to test newsWebsiteToRSSFeed
            //val url : kotlin.String = https://www.bbc.com/news/world-us-canada-59340789 // kotlin.String | The url of the news.
            //val analyze : kotlin.Boolean = true // kotlin.Boolean | Whether to analyze the news (extract entities etc.)
            //val result : kotlin.Any = apiInstance.newsWebsiteToRSSFeed(url, analyze)
            //result shouldBe ("TODO")
        }

        // to test newspaperFrontPages
        should("test newspaperFrontPages") {
            // uncomment below to test newspaperFrontPages
            //val sourceCountry : kotlin.String = au // kotlin.String | The ISO 3166 country code of the newspaper publication.
            //val sourceName : kotlin.String = herald-sun // kotlin.String | The identifier of the publication see attached list.
            //val date : kotlin.String = 2024-07-09 // kotlin.String | The date for which the front page should be retrieved. You can also go into the past, the earliest date is 2024-07-09.
            //val result : NewspaperFrontPages200Response = apiInstance.newspaperFrontPages(sourceCountry, sourceName, date)
            //result shouldBe ("TODO")
        }

        // to test retrieveNewsArticlesByIds
        should("test retrieveNewsArticlesByIds") {
            // uncomment below to test retrieveNewsArticlesByIds
            //val ids : kotlin.String = 2352,2354 // kotlin.String | A comma separated list of news ids.
            //val result : RetrieveNewsArticlesByIds200Response = apiInstance.retrieveNewsArticlesByIds(ids)
            //result shouldBe ("TODO")
        }

        // to test searchNews
        should("test searchNews") {
            // uncomment below to test searchNews
            //val text : kotlin.String = tesla // kotlin.String | The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford
            //val sourceCountries : kotlin.String = us,uk // kotlin.String | A comma-separated list of ISO 3166 country codes from which the news should originate.
            //val language : kotlin.String = en // kotlin.String | The ISO 6391 language code of the news.
            //val minSentiment : kotlin.Double = -0.8 // kotlin.Double | The minimal sentiment of the news in range [-1,1].
            //val maxSentiment : kotlin.Double = 0.8 // kotlin.Double | The maximal sentiment of the news in range [-1,1].
            //val earliestPublishDate : kotlin.String = 2022-04-22 16:12:35 // kotlin.String | The news must have been published after this date.
            //val latestPublishDate : kotlin.String = 2022-04-22 16:12:35 // kotlin.String | The news must have been published before this date.
            //val newsSources : kotlin.String = https://www.bbc.co.uk // kotlin.String | A comma-separated list of news sources from which the news should originate.
            //val authors : kotlin.String = John Doe // kotlin.String | A comma-separated list of author names. Only news from any of the given authors will be returned.
            //val categories : kotlin.String = politics,sports // kotlin.String | A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other.
            //val entities : kotlin.String = ORG:Tesla // kotlin.String | Filter news by entities (see semantic types).
            //val locationFilter : kotlin.String = 51.050407, 13.737262, 20 // kotlin.String | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\". Radius must be between 1 and 100 kilometers.
            //val sort : kotlin.String = publish-time // kotlin.String | The sorting criteria (publish-time).
            //val sortDirection : kotlin.String = ASC // kotlin.String | Whether to sort ascending or descending (ASC or DESC).
            //val offset : kotlin.Int = 0 // kotlin.Int | The number of news to skip in range [0,10000]
            //val number : kotlin.Int = 10 // kotlin.Int | The number of news to return in range [1,100]
            //val result : SearchNews200Response = apiInstance.searchNews(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, categories, entities, locationFilter, sort, sortDirection, offset, number)
            //result shouldBe ("TODO")
        }

        // to test topNews
        should("test topNews") {
            // uncomment below to test topNews
            //val sourceCountry : kotlin.String = us // kotlin.String | The ISO 3166 country code of the country for which top news should be retrieved.
            //val language : kotlin.String = en // kotlin.String | The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
            //val date : kotlin.String = 2024-05-30 // kotlin.String | The date for which the top news should be retrieved. If no date is given, the current day is assumed.
            //val headlinesOnly : kotlin.Boolean = false // kotlin.Boolean | Whether to only return basic information such as id, title, and url of the news.
            //val result : TopNews200Response = apiInstance.topNews(sourceCountry, language, date, headlinesOnly)
            //result shouldBe ("TODO")
        }

    }
}
