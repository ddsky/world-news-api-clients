/**
 * World News API
 * The world\'s news wrapped into a single API.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@worldnewsapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { NewsArticle } from './newsArticle';


export interface SearchNewsResponse { 
    offset: number;
    number: number;
    available: number;
    news: Array<NewsArticle>;
}

