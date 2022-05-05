package com.worldnewsapi.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.worldnewsapi.client.model.BigDecimal

/**
 * 
 * @param latitude 
 * @param longitude 
 * @param city 
 */
case class InlineResponse2002(latitude: BigDecimal,
                longitude: BigDecimal,
                city: Option[String]
                )

object InlineResponse2002 {
    /**
     * Creates the codec for converting InlineResponse2002 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2002] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2002] = deriveEncoder
}
