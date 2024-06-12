package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import worldnewsapi._

/**
 * 
 * @param summary 
 * @param duration 
 * @param thumbnail 
 * @param title 
 * @param url 
 */
case class ExtractNews200ResponseVideosInner(summary: Option[String],
                duration: Option[Int],
                thumbnail: Option[String],
                title: Option[String],
                url: Option[String]
                )

object ExtractNews200ResponseVideosInner {
    /**
     * Creates the codec for converting ExtractNews200ResponseVideosInner from and to JSON.
     */
    implicit val decoder: Decoder[ExtractNews200ResponseVideosInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[ExtractNews200ResponseVideosInner] = deriveEncoder
}
