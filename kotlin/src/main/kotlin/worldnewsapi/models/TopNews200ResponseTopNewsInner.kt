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

import worldnewsapi.models.TopNews200ResponseTopNewsInnerNewsInner

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param news 
 */


data class TopNews200ResponseTopNewsInner (

    @Json(name = "news")
    val news: kotlin.collections.List<TopNews200ResponseTopNewsInnerNewsInner>? = null

)

