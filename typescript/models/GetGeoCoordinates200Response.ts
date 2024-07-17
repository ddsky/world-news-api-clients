/**
 * World News API
 * The world\'s news wrapped into a single API.
 *
 * OpenAPI spec version: 1.3.0
 * Contact: mail@worldnewsapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { HttpFile } from '../http/http';

export class GetGeoCoordinates200Response {
    'latitude'?: number;
    'longitude'?: number;
    'city'?: string | null;

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
        return GetGeoCoordinates200Response.attributeTypeMap;
    }

    public constructor() {
    }
}

