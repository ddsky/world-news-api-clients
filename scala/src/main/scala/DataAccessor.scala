package worldnewsapi

// TODO: properly handle custom imports
import java.io._
import java.util.UUID
import java.time._
import com.twitter.finagle.http.exp.Multipart.{FileUpload, InMemoryFileUpload, OnDiskFileUpload}

import org.openapitools.models._

trait DataAccessor {
    // TODO: apiInfo -> apis -> operations = TODO error
    private object TODO extends CommonError("Not implemented") {
        def message = "Not implemented"
    }

        /**
        * 
        * @return A ExtractNews200Response
        */
        def News_extractNews(url: String, analyze: Boolean, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,ExtractNews200Response] = Left(TODO)

        /**
        * 
        * @return A ExtractNewsLinks200Response
        */
        def News_extractNewsLinks(url: String, analyze: Boolean, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,ExtractNewsLinks200Response] = Left(TODO)

        /**
        * 
        * @return A GetGeoCoordinates200Response
        */
        def News_getGeoCoordinates(location: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,GetGeoCoordinates200Response] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def News_newsWebsiteToRSSFeed(url: String, analyze: Boolean, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A RetrieveNewsArticlesByIds200Response
        */
        def News_retrieveNewsArticlesByIds(ids: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,RetrieveNewsArticlesByIds200Response] = Left(TODO)

        /**
        * 
        * @return A SearchNews200Response
        */
        def News_searchNews(text: Option[String], sourceCountries: Option[String], language: Option[String], minSentiment: Option[Double], maxSentiment: Option[Double], earliestPublishDate: Option[String], latestPublishDate: Option[String], newsSources: Option[String], authors: Option[String], entities: Option[String], locationFilter: Option[String], sort: Option[String], sortDirection: Option[String], offset: Option[Int], number: Option[Int], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,SearchNews200Response] = Left(TODO)

        /**
        * 
        * @return A TopNews200Response
        */
        def News_topNews(sourceCountry: String, language: String, date: Option[String], headlinesOnly: Option[Boolean], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,TopNews200Response] = Left(TODO)

}