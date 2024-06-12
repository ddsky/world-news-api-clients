package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import worldnewsapi._

/**
 * 
 * @param width 
 * @param title 
 * @param url 
 * @param height 
 */
case class ExtractNews200ResponseImagesInner(width: Option[Int],
                title: Option[String],
                url: Option[String],
                height: Option[Int]
                )

object ExtractNews200ResponseImagesInner {
    /**
     * Creates the codec for converting ExtractNews200ResponseImagesInner from and to JSON.
     */
    implicit val decoder: Decoder[ExtractNews200ResponseImagesInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[ExtractNews200ResponseImagesInner] = deriveEncoder
}
