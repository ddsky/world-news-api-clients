/**
 * World News API
 * The world\'s news wrapped into a single API.
 *
 * OpenAPI spec version: 1.1
 * Contact: mail@worldnewsapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { NewsArticle } from '../models/NewsArticle';
import { HttpFile } from '../http/http';

export class SearchNewsResponse {
    'offset': number;
    'number': number;
    'available': number;
    'news': Array<NewsArticle>;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "offset",
            "baseName": "offset",
            "type": "number",
            "format": ""
        },
        {
            "name": "number",
            "baseName": "number",
            "type": "number",
            "format": ""
        },
        {
            "name": "available",
            "baseName": "available",
            "type": "number",
            "format": ""
        },
        {
            "name": "news",
            "baseName": "news",
            "type": "Array<NewsArticle>",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return SearchNewsResponse.attributeTypeMap;
    }

    public constructor() {
    }
}

