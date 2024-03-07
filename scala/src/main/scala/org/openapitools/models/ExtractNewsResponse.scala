package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import worldnewsapi._
import org.openapitools.models.BigDecimal

/**
 * 
 * @param title 
 * @param text 
 * @param url 
 * @param image 
 * @param author 
 * @param language 
 * @param sourceUnderscorecountry 
 * @param sentiment 
 */
case class ExtractNewsResponse(title: Option[String],
                text: Option[String],
                url: Option[String],
                image: Option[String],
                author: Option[String],
                language: Option[String],
                sourceUnderscorecountry: Option[String],
                sentiment: Option[BigDecimal]
                )

object ExtractNewsResponse {
    /**
     * Creates the codec for converting ExtractNewsResponse from and to JSON.
     */
    implicit val decoder: Decoder[ExtractNewsResponse] = deriveDecoder
    implicit val encoder: ObjectEncoder[ExtractNewsResponse] = deriveEncoder
}
