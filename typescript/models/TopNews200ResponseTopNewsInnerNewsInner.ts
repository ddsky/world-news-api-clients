/**
 * World News API
 * The world\'s news wrapped into a single API.
 *
 * OpenAPI spec version: 2.0.0
 * Contact: mail@worldnewsapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { HttpFile } from '../http/http';

export class TopNews200ResponseTopNewsInnerNewsInner {
    'summary'?: string | null;
    'image'?: string | null;
    'author'?: string | null;
    'id'?: number;
    'text'?: string | null;
    'title'?: string | null;
    'publishDate'?: string | null;
    'url'?: string | null;
    'authors'?: Array<string>;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "summary",
            "baseName": "summary",
            "type": "string",
            "format": ""
        },
        {
            "name": "image",
            "baseName": "image",
            "type": "string",
            "format": ""
        },
        {
            "name": "author",
            "baseName": "author",
            "type": "string",
            "format": ""
        },
        {
            "name": "id",
            "baseName": "id",
            "type": "number",
            "format": ""
        },
        {
            "name": "text",
            "baseName": "text",
            "type": "string",
            "format": ""
        },
        {
            "name": "title",
            "baseName": "title",
            "type": "string",
            "format": ""
        },
        {
            "name": "publishDate",
            "baseName": "publish_date",
            "type": "string",
            "format": ""
        },
        {
            "name": "url",
            "baseName": "url",
            "type": "string",
            "format": ""
        },
        {
            "name": "authors",
            "baseName": "authors",
            "type": "Array<string>",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return TopNews200ResponseTopNewsInnerNewsInner.attributeTypeMap;
    }

    public constructor() {
    }
}

