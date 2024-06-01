/**
 *
 * Please note:
 * This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * Do not edit this file manually.
 *
 */

@file:Suppress(
    "ArrayInDataClass",
    "EnumEntryName",
    "RemoveRedundantQualifierName",
    "UnusedImport"
)

package worldnewsapi.models


import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param latitude 
 * @param longitude 
 * @param city 
 */


data class GetGeoCoordinates200Response (

    @Json(name = "latitude")
    val latitude: java.math.BigDecimal? = null,

    @Json(name = "longitude")
    val longitude: java.math.BigDecimal? = null,

    @Json(name = "city")
    val city: kotlin.String? = null

)
