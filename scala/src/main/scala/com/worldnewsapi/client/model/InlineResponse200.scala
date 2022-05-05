package com.worldnewsapi.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.worldnewsapi.client.model.InlineResponse200News
import scala.collection.immutable.Seq

/**
 * 
 * @param offset 
 * @param number 
 * @param available 
 * @param news 
 */
case class InlineResponse200(offset: Int,
                number: Int,
                available: Int,
                news: Seq[InlineResponse200News]
                )

object InlineResponse200 {
    /**
     * Creates the codec for converting InlineResponse200 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse200] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse200] = deriveEncoder
}
