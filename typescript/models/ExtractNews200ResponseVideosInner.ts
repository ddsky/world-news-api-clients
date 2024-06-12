/**
 * World News API
 * The world\'s news wrapped into a single API.
 *
 * OpenAPI spec version: 1.2.0
 * Contact: mail@worldnewsapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { HttpFile } from '../http/http';

export class ExtractNews200ResponseVideosInner {
    'summary'?: string | null;
    'duration'?: number;
    'thumbnail'?: string | null;
    'title'?: string | null;
    'url'?: string | null;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "summary",
            "baseName": "summary",
            "type": "string",
            "format": ""
        },
        {
            "name": "duration",
            "baseName": "duration",
            "type": "number",
            "format": ""
        },
        {
            "name": "thumbnail",
            "baseName": "thumbnail",
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
            "name": "url",
            "baseName": "url",
            "type": "string",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return ExtractNews200ResponseVideosInner.attributeTypeMap;
    }

    public constructor() {
    }
}

