/**
 * World News API
 * The world\'s news wrapped into a single API.
 *
 * The version of the OpenAPI document: 2.0.0
 * Contact: mail@worldnewsapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { TopNews200ResponseTopNewsInner } from './topNews200ResponseTopNewsInner';


export interface TopNews200Response { 
    top_news?: Array<TopNews200ResponseTopNewsInner>;
    language?: string | null;
    country?: string | null;
}

