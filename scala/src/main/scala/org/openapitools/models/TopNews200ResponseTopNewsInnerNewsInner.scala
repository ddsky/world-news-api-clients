package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import worldnewsapi._
import scala.collection.immutable.Seq

/**
 * 
 * @param summary 
 * @param image 
 * @param author 
 * @param id 
 * @param text 
 * @param title 
 * @param publishUnderscoredate 
 * @param url 
 * @param authors 
 */
case class TopNews200ResponseTopNewsInnerNewsInner(summary: Option[String],
                image: Option[String],
                author: Option[String],
                id: Option[Int],
                text: Option[String],
                title: Option[String],
                publishUnderscoredate: Option[String],
                url: Option[String],
                authors: Option[Seq[String]]
                )

object TopNews200ResponseTopNewsInnerNewsInner {
    /**
     * Creates the codec for converting TopNews200ResponseTopNewsInnerNewsInner from and to JSON.
     */
    implicit val decoder: Decoder[TopNews200ResponseTopNewsInnerNewsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[TopNews200ResponseTopNewsInnerNewsInner] = deriveEncoder
}
