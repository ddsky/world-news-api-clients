package org.openapitools.apis

import java.io._
import worldnewsapi._
import org.openapitools.models._
import org.openapitools.models.ExtractNews200Response
import org.openapitools.models.ExtractNewsLinks200Response
import org.openapitools.models.GetGeoCoordinates200Response
import org.openapitools.models.RetrieveNewsArticlesByIds200Response
import org.openapitools.models.SearchNews200Response
import org.openapitools.models.TopNews200Response
import io.finch.circe._
import io.circe.generic.semiauto._
import com.twitter.concurrent.AsyncStream
import com.twitter.finagle.Service
import com.twitter.finagle.Http
import com.twitter.finagle.http.{Request, Response}
import com.twitter.finagle.http.exp.Multipart.{FileUpload, InMemoryFileUpload, OnDiskFileUpload}
import com.twitter.util.Future
import com.twitter.io.Buf
import io.finch._, items._
import java.io.File
import java.nio.file.Files
import java.time._

object NewsApi {
    /**
    * Compiles all service endpoints.
    * @return Bundled compilation of all service endpoints.
    */
    def endpoints(da: DataAccessor) =
        extractNews(da) :+:
        extractNewsLinks(da) :+:
        getGeoCoordinates(da) :+:
        newsWebsiteToRSSFeed(da) :+:
        retrieveNewsArticlesByIds(da) :+:
        searchNews(da) :+:
        topNews(da)


    private def checkError(e: CommonError) = e match {
      case InvalidInput(_) => BadRequest(e)
      case MissingIdentifier(_) => BadRequest(e)
      case RecordNotFound(_) => NotFound(e)
      case _ => InternalServerError(e)
    }

    implicit class StringOps(s: String) {

      import java.time.format.DateTimeFormatter

      lazy val localformatter: DateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd")
      lazy val datetimeformatter: DateTimeFormatter =
      DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSSZ")

      def toLocalDateTime: LocalDateTime = LocalDateTime.parse(s,localformatter)
      def toZonedDateTime: ZonedDateTime = ZonedDateTime.parse(s, datetimeformatter)

    }

        /**
        * 
        * @return An endpoint representing a ExtractNews200Response
        */
        private def extractNews(da: DataAccessor): Endpoint[ExtractNews200Response] =
        get("extract-news" :: param("url") :: param("analyze").map(_.toBoolean) :: param("api-key") :: header("x-api-key")) { (url: String, analyze: Boolean, authParamapiKey: String, authParamheaderApiKey: String) =>
          da.News_extractNews(url, analyze, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a ExtractNewsLinks200Response
        */
        private def extractNewsLinks(da: DataAccessor): Endpoint[ExtractNewsLinks200Response] =
        get("extract-news-links" :: param("url") :: param("analyze").map(_.toBoolean) :: param("api-key") :: header("x-api-key")) { (url: String, analyze: Boolean, authParamapiKey: String, authParamheaderApiKey: String) =>
          da.News_extractNewsLinks(url, analyze, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a GetGeoCoordinates200Response
        */
        private def getGeoCoordinates(da: DataAccessor): Endpoint[GetGeoCoordinates200Response] =
        get("geo-coordinates" :: param("location") :: param("api-key") :: header("x-api-key")) { (location: String, authParamapiKey: String, authParamheaderApiKey: String) =>
          da.News_getGeoCoordinates(location, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def newsWebsiteToRSSFeed(da: DataAccessor): Endpoint[Object] =
        get("feed.rss" :: param("url") :: param("analyze").map(_.toBoolean) :: param("api-key") :: header("x-api-key")) { (url: String, analyze: Boolean, authParamapiKey: String, authParamheaderApiKey: String) =>
          da.News_newsWebsiteToRSSFeed(url, analyze, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a RetrieveNewsArticlesByIds200Response
        */
        private def retrieveNewsArticlesByIds(da: DataAccessor): Endpoint[RetrieveNewsArticlesByIds200Response] =
        get("retrieve-news" :: param("ids") :: param("api-key") :: header("x-api-key")) { (ids: String, authParamapiKey: String, authParamheaderApiKey: String) =>
          da.News_retrieveNewsArticlesByIds(ids, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a SearchNews200Response
        */
        private def searchNews(da: DataAccessor): Endpoint[SearchNews200Response] =
        get("search-news" :: paramOption("text") :: paramOption("source-countries") :: paramOption("language") :: paramOption("min-sentiment").map(_.map(_.toDouble)) :: paramOption("max-sentiment").map(_.map(_.toDouble)) :: paramOption("earliest-publish-date") :: paramOption("latest-publish-date") :: paramOption("news-sources") :: paramOption("authors") :: paramOption("entities") :: paramOption("location-filter") :: paramOption("sort") :: paramOption("sort-direction") :: paramOption("offset").map(_.map(_.toInt)) :: paramOption("number").map(_.map(_.toInt)) :: param("api-key") :: header("x-api-key")) { (text: Option[String], sourceCountries: Option[String], language: Option[String], minSentiment: Option[Double], maxSentiment: Option[Double], earliestPublishDate: Option[String], latestPublishDate: Option[String], newsSources: Option[String], authors: Option[String], entities: Option[String], locationFilter: Option[String], sort: Option[String], sortDirection: Option[String], offset: Option[Int], number: Option[Int], authParamapiKey: String, authParamheaderApiKey: String) =>
          da.News_searchNews(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, entities, locationFilter, sort, sortDirection, offset, number, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a TopNews200Response
        */
        private def topNews(da: DataAccessor): Endpoint[TopNews200Response] =
        get("top-news" :: param("source-country") :: param("language") :: paramOption("date") :: paramOption("headlines-only").map(_.map(_.toBoolean)) :: param("api-key") :: header("x-api-key")) { (sourceCountry: String, language: String, date: Option[String], headlinesOnly: Option[Boolean], authParamapiKey: String, authParamheaderApiKey: String) =>
          da.News_topNews(sourceCountry, language, date, headlinesOnly, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }


    implicit private def fileUploadToFile(fileUpload: FileUpload) : File = {
      fileUpload match {
        case upload: InMemoryFileUpload =>
          bytesToFile(Buf.ByteArray.Owned.extract(upload.content))
        case upload: OnDiskFileUpload =>
          upload.content
        case _ => null
      }
    }

    private def bytesToFile(input: Array[Byte]): java.io.File = {
      val file = Files.createTempFile("tmpNewsApi", null).toFile
      val output = new FileOutputStream(file)
      output.write(input)
      file
    }

    // This assists in params(string) application (which must be Seq[A] in parameter list) when the param is used as a List[A] elsewhere.
    implicit def seqList[A](input: Seq[A]): List[A] = input.toList
}
