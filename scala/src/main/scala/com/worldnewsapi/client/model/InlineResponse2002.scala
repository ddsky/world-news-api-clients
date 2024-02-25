package com.worldnewsapi.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import scala.collection.immutable.Seq

/**
 * 
 * @param newsUnderscorelinks 
 */
case class InlineResponse2002(newsUnderscorelinks: Option[Seq[String]]
                )

object InlineResponse2002 {
    /**
     * Creates the codec for converting InlineResponse2002 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2002] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2002] = deriveEncoder
}
