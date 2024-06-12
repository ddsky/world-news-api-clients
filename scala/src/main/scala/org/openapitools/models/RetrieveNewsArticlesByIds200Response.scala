package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import worldnewsapi._
import org.openapitools.models.RetrieveNewsArticlesByIds200ResponseNewsInner
import scala.collection.immutable.Seq

/**
 * 
 * @param news 
 */
case class RetrieveNewsArticlesByIds200Response(news: Option[Seq[RetrieveNewsArticlesByIds200ResponseNewsInner]]
                )

object RetrieveNewsArticlesByIds200Response {
    /**
     * Creates the codec for converting RetrieveNewsArticlesByIds200Response from and to JSON.
     */
    implicit val decoder: Decoder[RetrieveNewsArticlesByIds200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[RetrieveNewsArticlesByIds200Response] = deriveEncoder
}
