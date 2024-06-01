package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import worldnewsapi._
import org.openapitools.models.TopNews200ResponseTopNewsInnerNewsInner
import scala.collection.immutable.Seq

/**
 * 
 * @param news 
 */
case class TopNews200ResponseTopNewsInner(news: Option[Seq[TopNews200ResponseTopNewsInnerNewsInner]]
                )

object TopNews200ResponseTopNewsInner {
    /**
     * Creates the codec for converting TopNews200ResponseTopNewsInner from and to JSON.
     */
    implicit val decoder: Decoder[TopNews200ResponseTopNewsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[TopNews200ResponseTopNewsInner] = deriveEncoder
}
