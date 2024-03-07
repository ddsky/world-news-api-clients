package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import worldnewsapi._
import scala.collection.immutable.Seq

/**
 * 
 * @param newsUnderscorelinks 
 */
case class ExtractLinksResponse(newsUnderscorelinks: Option[Seq[String]]
                )

object ExtractLinksResponse {
    /**
     * Creates the codec for converting ExtractLinksResponse from and to JSON.
     */
    implicit val decoder: Decoder[ExtractLinksResponse] = deriveDecoder
    implicit val encoder: ObjectEncoder[ExtractLinksResponse] = deriveEncoder
}
