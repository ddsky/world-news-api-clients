package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import worldnewsapi._
import org.openapitools.models.TopNews200ResponseTopNewsInner
import scala.collection.immutable.Seq

/**
 * 
 * @param topUnderscorenews 
 * @param language 
 * @param country 
 */
case class TopNews200Response(topUnderscorenews: Option[Seq[TopNews200ResponseTopNewsInner]],
                language: Option[String],
                country: Option[String]
                )

object TopNews200Response {
    /**
     * Creates the codec for converting TopNews200Response from and to JSON.
     */
    implicit val decoder: Decoder[TopNews200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[TopNews200Response] = deriveEncoder
}
