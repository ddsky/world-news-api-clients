package com.worldnewsapi

import java.io._
import org.openapitools._
import com.worldnewsapi.client.model._
import com.worldnewsapi.client.model.InlineResponse200
import com.worldnewsapi.client.model.InlineResponse2001
import com.worldnewsapi.client.model.InlineResponse2002
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
        geoCoordinates(da) :+:
        searchNews(da)


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
        * @return An endpoint representing a InlineResponse2001
        */
        private def extractNews(da: DataAccessor): Endpoint[InlineResponse2001] =
        get("extract-news" :: param("url") :: param("analyze").map(_.toBoolean) :: param("api-key")) { (url: String, analyze: Boolean, authParamapiKey: String) =>
          da.News_extractNews(url, analyze, authParamapiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse2002
        */
        private def geoCoordinates(da: DataAccessor): Endpoint[InlineResponse2002] =
        get("geo-coordinates" :: param("location") :: param("api-key")) { (location: String, authParamapiKey: String) =>
          da.News_geoCoordinates(location, authParamapiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse200
        */
        private def searchNews(da: DataAccessor): Endpoint[InlineResponse200] =
        get("search-news" :: paramOption("text") :: paramOption("source-countries") :: paramOption("language") :: paramOption("min-sentiment").map(_.map(_.toDouble)) :: paramOption("max-sentiment").map(_.map(_.toDouble)) :: paramOption("earliest-publish-date") :: paramOption("latest-publish-date") :: paramOption("news-sources") :: paramOption("authors") :: paramOption("entities") :: paramOption("location-filter") :: paramOption("offset").map(_.map(_.toInt)) :: paramOption("number").map(_.map(_.toInt)) :: paramOption("sort") :: paramOption("sort-direction") :: param("api-key")) { (text: Option[String], sourceCountries: Option[String], language: Option[String], minSentiment: Option[Double], maxSentiment: Option[Double], earliestPublishDate: Option[String], latestPublishDate: Option[String], newsSources: Option[String], authors: Option[String], entities: Option[String], locationFilter: Option[String], offset: Option[Int], number: Option[Int], sort: Option[String], sortDirection: Option[String], authParamapiKey: String) =>
          da.News_searchNews(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, entities, locationFilter, offset, number, sort, sortDirection, authParamapiKey) match {
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
