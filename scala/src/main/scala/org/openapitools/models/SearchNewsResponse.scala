package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import worldnewsapi._
import org.openapitools.models.NewsArticle
import scala.collection.immutable.Seq

/**
 * 
 * @param offset 
 * @param number 
 * @param available 
 * @param news 
 */
case class SearchNewsResponse(offset: Int,
                number: Int,
                available: Int,
                news: Seq[NewsArticle]
                )

object SearchNewsResponse {
    /**
     * Creates the codec for converting SearchNewsResponse from and to JSON.
     */
    implicit val decoder: Decoder[SearchNewsResponse] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchNewsResponse] = deriveEncoder
}
