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

import worldnewsapi.models.NewspaperFrontPages200ResponseFrontPage

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param frontPage 
 */


data class NewspaperFrontPages200Response (

    @Json(name = "front_page")
    val frontPage: NewspaperFrontPages200ResponseFrontPage? = null

) {


}

