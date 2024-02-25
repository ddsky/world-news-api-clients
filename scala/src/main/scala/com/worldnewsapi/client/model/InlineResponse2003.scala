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
case class InlineResponse2003(latitude: BigDecimal,
                longitude: BigDecimal,
                city: Option[String]
                )

object InlineResponse2003 {
    /**
     * Creates the codec for converting InlineResponse2003 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2003] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2003] = deriveEncoder
}
