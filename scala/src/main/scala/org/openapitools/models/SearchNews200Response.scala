package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import worldnewsapi._
import org.openapitools.models.SearchNews200ResponseNewsInner
import scala.collection.immutable.Seq

/**
 * 
 * @param offset 
 * @param number 
 * @param available 
 * @param news 
 */
case class SearchNews200Response(offset: Option[Int],
                number: Option[Int],
                available: Option[Int],
                news: Option[Seq[SearchNews200ResponseNewsInner]]
                )

object SearchNews200Response {
    /**
     * Creates the codec for converting SearchNews200Response from and to JSON.
     */
    implicit val decoder: Decoder[SearchNews200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchNews200Response] = deriveEncoder
}
