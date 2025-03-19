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

import { SearchNews200ResponseNewsInner } from '../models/SearchNews200ResponseNewsInner';
import { HttpFile } from '../http/http';

export class SearchNews200Response {
    'offset'?: number;
    'number'?: number;
    'available'?: number;
    'news'?: Array<SearchNews200ResponseNewsInner>;

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
            "type": "Array<SearchNews200ResponseNewsInner>",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return SearchNews200Response.attributeTypeMap;
    }

    public constructor() {
    }
}

