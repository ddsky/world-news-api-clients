package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import worldnewsapi._
import org.openapitools.models.BigDecimal

/**
 * 
 * @param latitude 
 * @param longitude 
 * @param city 
 */
case class GeoCoordinatesResponse(latitude: BigDecimal,
                longitude: BigDecimal,
                city: Option[String]
                )

object GeoCoordinatesResponse {
    /**
     * Creates the codec for converting GeoCoordinatesResponse from and to JSON.
     */
    implicit val decoder: Decoder[GeoCoordinatesResponse] = deriveDecoder
    implicit val encoder: ObjectEncoder[GeoCoordinatesResponse] = deriveEncoder
}
