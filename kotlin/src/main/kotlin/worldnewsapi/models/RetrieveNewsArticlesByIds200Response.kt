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

import worldnewsapi.models.RetrieveNewsArticlesByIds200ResponseNewsInner

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param news 
 */


data class RetrieveNewsArticlesByIds200Response (

    @Json(name = "news")
    val news: kotlin.collections.List<RetrieveNewsArticlesByIds200ResponseNewsInner>? = null

) {


}

