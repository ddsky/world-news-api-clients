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
 * @param catgory 
 * @param language 
 * @param title 
 * @param url 
 * @param sourceUnderscorecountry 
 * @param id 
 * @param text 
 * @param publishUnderscoredate 
 * @param authors 
 */
case class RetrieveNewsArticlesByIds200ResponseNewsInner(summary: Option[String],
                image: Option[String],
                sentiment: Option[BigDecimal],
                catgory: Option[String],
                language: Option[String],
                title: Option[String],
                url: Option[String],
                sourceUnderscorecountry: Option[String],
                id: Option[Int],
                text: Option[String],
                publishUnderscoredate: Option[String],
                authors: Option[Seq[String]]
                )

object RetrieveNewsArticlesByIds200ResponseNewsInner {
    /**
     * Creates the codec for converting RetrieveNewsArticlesByIds200ResponseNewsInner from and to JSON.
     */
    implicit val decoder: Decoder[RetrieveNewsArticlesByIds200ResponseNewsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[RetrieveNewsArticlesByIds200ResponseNewsInner] = deriveEncoder
}
