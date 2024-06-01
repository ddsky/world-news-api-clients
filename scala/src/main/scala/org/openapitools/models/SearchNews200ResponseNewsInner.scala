package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import worldnewsapi._
import org.openapitools.models.BigDecimal
import scala.collection.immutable.Seq

/**
 * 
 * @param summary 
 * @param image 
 * @param sentiment 
 * @param sourceUnderscorecountry 
 * @param language 
 * @param id 
 * @param text 
 * @param title 
 * @param publishUnderscoredate 
 * @param url 
 * @param authors 
 */
case class SearchNews200ResponseNewsInner(summary: Option[String],
                image: Option[String],
                sentiment: Option[BigDecimal],
                sourceUnderscorecountry: Option[String],
                language: Option[String],
                id: Option[Int],
                text: Option[String],
                title: Option[String],
                publishUnderscoredate: Option[String],
                url: Option[String],
                authors: Option[Seq[String]]
                )

object SearchNews200ResponseNewsInner {
    /**
     * Creates the codec for converting SearchNews200ResponseNewsInner from and to JSON.
     */
    implicit val decoder: Decoder[SearchNews200ResponseNewsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchNews200ResponseNewsInner] = deriveEncoder
}
