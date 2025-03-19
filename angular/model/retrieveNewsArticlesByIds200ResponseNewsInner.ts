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


export interface RetrieveNewsArticlesByIds200ResponseNewsInner { 
    summary?: string | null;
    image?: string | null;
    sentiment?: number;
    language?: string | null;
    title?: string | null;
    url?: string | null;
    source_country?: string | null;
    id?: number;
    text?: string | null;
    category?: string | null;
    publish_date?: string | null;
    authors?: Array<string>;
}

