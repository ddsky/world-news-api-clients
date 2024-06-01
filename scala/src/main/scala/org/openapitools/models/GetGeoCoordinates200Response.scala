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
case class GetGeoCoordinates200Response(latitude: Option[BigDecimal],
                longitude: Option[BigDecimal],
                city: Option[String]
                )

object GetGeoCoordinates200Response {
    /**
     * Creates the codec for converting GetGeoCoordinates200Response from and to JSON.
     */
    implicit val decoder: Decoder[GetGeoCoordinates200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[GetGeoCoordinates200Response] = deriveEncoder
}
