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

import { InlineResponse200News } from './InlineResponse200News';
import { HttpFile } from '../http/http';

export class InlineResponse200 {
    'offset': number;
    'number': number;
    'available': number;
    'news': Array<InlineResponse200News>;

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
            "type": "Array<InlineResponse200News>",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return InlineResponse200.attributeTypeMap;
    }

    public constructor() {
    }
}
