package com.worldnewsapi.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.worldnewsapi.client.model.BigDecimal

/**
 * A news entry.
 * @param id 
 * @param title 
 * @param text 
 * @param summary 
 * @param url 
 * @param image 
 * @param author 
 * @param language 
 * @param sourceUnderscorecountry 
 * @param sentiment 
 */
case class News(id: Option[Int],
                title: Option[String],
                text: Option[String],
                summary: Option[String],
                url: Option[String],
                image: Option[String],
                author: Option[String],
                language: Option[String],
                sourceUnderscorecountry: Option[String],
                sentiment: Option[BigDecimal]
                )

object News {
    /**
     * Creates the codec for converting News from and to JSON.
     */
    implicit val decoder: Decoder[News] = deriveDecoder
    implicit val encoder: ObjectEncoder[News] = deriveEncoder
}
