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
case class ExtractNewsLinks200Response(newsUnderscorelinks: Option[Seq[String]]
                )

object ExtractNewsLinks200Response {
    /**
     * Creates the codec for converting ExtractNewsLinks200Response from and to JSON.
     */
    implicit val decoder: Decoder[ExtractNewsLinks200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[ExtractNewsLinks200Response] = deriveEncoder
}
