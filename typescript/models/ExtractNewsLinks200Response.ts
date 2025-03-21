/**
 * World News API
 * The world\'s news wrapped into a single API.
 *
 * OpenAPI spec version: 2.2.0
 * Contact: mail@worldnewsapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { HttpFile } from '../http/http';

export class ExtractNewsLinks200Response {
    'newsLinks'?: Array<string>;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "newsLinks",
            "baseName": "news_links",
            "type": "Array<string>",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return ExtractNewsLinks200Response.attributeTypeMap;
    }

    public constructor() {
    }
}

