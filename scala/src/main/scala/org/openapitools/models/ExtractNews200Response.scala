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
 * @param publishUnderscoredate 
 * @param author 
 * @param language 
 * @param sourceUnderscorecountry 
 * @param sentiment 
 */
case class ExtractNews200Response(title: Option[String],
                text: Option[String],
                url: Option[String],
                image: Option[String],
                publishUnderscoredate: Option[String],
                author: Option[String],
                language: Option[String],
                sourceUnderscorecountry: Option[String],
                sentiment: Option[BigDecimal]
                )

object ExtractNews200Response {
    /**
     * Creates the codec for converting ExtractNews200Response from and to JSON.
     */
    implicit val decoder: Decoder[ExtractNews200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[ExtractNews200Response] = deriveEncoder
}
