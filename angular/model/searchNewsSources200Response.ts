/**
 * World News API
 * The world\'s news wrapped into a single API.
 *
 * The version of the OpenAPI document: 2.2.0
 * Contact: mail@worldnewsapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { SearchNewsSources200ResponseSourcesInner } from './searchNewsSources200ResponseSourcesInner';


export interface SearchNewsSources200Response { 
    available?: number;
    sources?: Array<SearchNewsSources200ResponseSourcesInner>;
}

