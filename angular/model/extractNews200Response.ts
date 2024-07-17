/**
 * World News API
 * The world\'s news wrapped into a single API.
 *
 * The version of the OpenAPI document: 1.3.0
 * Contact: mail@worldnewsapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { ExtractNews200ResponseVideosInner } from './extractNews200ResponseVideosInner';
import { ExtractNews200ResponseImagesInner } from './extractNews200ResponseImagesInner';


export interface ExtractNews200Response { 
    title?: string | null;
    text?: string | null;
    url?: string | null;
    image?: string | null;
    images?: Array<ExtractNews200ResponseImagesInner>;
    video?: string | null;
    videos?: Array<ExtractNews200ResponseVideosInner>;
    publish_date?: string | null;
    author?: string | null;
    authors?: Array<string>;
    language?: string | null;
}

