/**
 * World News API
 * The world's news wrapped into a single API.
 *
 * OpenAPI spec version: 1.0
 * Contact: mail@worldnewsapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { HttpFile } from '../http/http';

export class InlineResponse2002 {
    'latitude': number;
    'longitude': number;
    'city'?: string;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "latitude",
            "baseName": "latitude",
            "type": "number",
            "format": ""
        },
        {
            "name": "longitude",
            "baseName": "longitude",
            "type": "number",
            "format": ""
        },
        {
            "name": "city",
            "baseName": "city",
            "type": "string",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return InlineResponse2002.attributeTypeMap;
    }

    public constructor() {
    }
}

