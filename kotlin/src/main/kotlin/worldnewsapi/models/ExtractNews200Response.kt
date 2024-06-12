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

import worldnewsapi.models.ExtractNews200ResponseImagesInner
import worldnewsapi.models.ExtractNews200ResponseVideosInner

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param title 
 * @param text 
 * @param url 
 * @param image 
 * @param images 
 * @param video 
 * @param videos 
 * @param publishDate 
 * @param author 
 * @param authors 
 * @param language 
 */


data class ExtractNews200Response (

    @Json(name = "title")
    val title: kotlin.String? = null,

    @Json(name = "text")
    val text: kotlin.String? = null,

    @Json(name = "url")
    val url: kotlin.String? = null,

    @Json(name = "image")
    val image: kotlin.String? = null,

    @Json(name = "images")
    val images: kotlin.collections.List<ExtractNews200ResponseImagesInner>? = null,

    @Json(name = "video")
    val video: kotlin.String? = null,

    @Json(name = "videos")
    val videos: kotlin.collections.List<ExtractNews200ResponseVideosInner>? = null,

    @Json(name = "publish_date")
    val publishDate: kotlin.String? = null,

    @Json(name = "author")
    val author: kotlin.String? = null,

    @Json(name = "authors")
    val authors: kotlin.collections.List<kotlin.String>? = null,

    @Json(name = "language")
    val language: kotlin.String? = null

)

