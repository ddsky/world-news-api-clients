package org.openapitools

// TODO: properly handle custom imports
import java.io._
import java.util.UUID
import java.time._
import com.twitter.finagle.http.exp.Multipart.{FileUpload, InMemoryFileUpload, OnDiskFileUpload}

import com.worldnewsapi.client.model._

trait DataAccessor {
    // TODO: apiInfo -> apis -> operations = TODO error
    private object TODO extends CommonError("Not implemented") {
        def message = "Not implemented"
    }

        /**
        * 
        * @return A InlineResponse2001
        */
        def News_extractNews(url: String, analyze: Boolean, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,InlineResponse2001] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def News_extractNews_0(url: String, apiKey: String, prefix: Option[String], subDomain: Option[Boolean], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A InlineResponse2002
        */
        def News_geoCoordinates(location: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,InlineResponse2002] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def News_newsWebsiteToRSSFeed(url: String, apiKey: String, extractNews: Option[Boolean], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A InlineResponse200
        */
        def News_searchNews(text: Option[String], sourceCountries: Option[String], language: Option[String], minSentiment: Option[Double], maxSentiment: Option[Double], earliestPublishDate: Option[String], latestPublishDate: Option[String], newsSources: Option[String], authors: Option[String], entities: Option[String], locationFilter: Option[String], offset: Option[Int], number: Option[Int], sort: Option[String], sortDirection: Option[String], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,InlineResponse200] = Left(TODO)

}