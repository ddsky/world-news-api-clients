package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import worldnewsapi._
import org.openapitools.models.BigDecimal

/**
 * 
 * @param id 
 * @param title 
 * @param text 
 * @param summary 
 * @param url 
 * @param image 
 * @param publishUnderscoredate 
 * @param author 
 * @param language 
 * @param sourceUnderscorecountry 
 * @param sentiment 
 */
case class NewsArticle(id: Option[Int],
                title: Option[String],
                text: Option[String],
                summary: Option[String],
                url: Option[String],
                image: Option[String],
                publishUnderscoredate: Option[String],
                author: Option[String],
                language: Option[String],
                sourceUnderscorecountry: Option[String],
                sentiment: Option[BigDecimal]
                )

object NewsArticle {
    /**
     * Creates the codec for converting NewsArticle from and to JSON.
     */
    implicit val decoder: Decoder[NewsArticle] = deriveDecoder
    implicit val encoder: ObjectEncoder[NewsArticle] = deriveEncoder
}
