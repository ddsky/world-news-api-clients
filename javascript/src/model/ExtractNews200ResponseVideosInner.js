/**
 * World News API
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 1.3.1
 * Contact: mail@worldnewsapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The ExtractNews200ResponseVideosInner model module.
 * @module model/ExtractNews200ResponseVideosInner
 * @version 1.3.1
 */
class ExtractNews200ResponseVideosInner {
    /**
     * Constructs a new <code>ExtractNews200ResponseVideosInner</code>.
     * @alias module:model/ExtractNews200ResponseVideosInner
     */
    constructor() { 
        
        ExtractNews200ResponseVideosInner.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ExtractNews200ResponseVideosInner</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ExtractNews200ResponseVideosInner} obj Optional instance to populate.
     * @return {module:model/ExtractNews200ResponseVideosInner} The populated <code>ExtractNews200ResponseVideosInner</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ExtractNews200ResponseVideosInner();

            if (data.hasOwnProperty('summary')) {
                obj['summary'] = ApiClient.convertToType(data['summary'], 'String');
            }
            if (data.hasOwnProperty('duration')) {
                obj['duration'] = ApiClient.convertToType(data['duration'], 'Number');
            }
            if (data.hasOwnProperty('thumbnail')) {
                obj['thumbnail'] = ApiClient.convertToType(data['thumbnail'], 'String');
            }
            if (data.hasOwnProperty('title')) {
                obj['title'] = ApiClient.convertToType(data['title'], 'String');
            }
            if (data.hasOwnProperty('url')) {
                obj['url'] = ApiClient.convertToType(data['url'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>ExtractNews200ResponseVideosInner</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ExtractNews200ResponseVideosInner</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['summary'] && !(typeof data['summary'] === 'string' || data['summary'] instanceof String)) {
            throw new Error("Expected the field `summary` to be a primitive type in the JSON string but got " + data['summary']);
        }
        // ensure the json data is a string
        if (data['thumbnail'] && !(typeof data['thumbnail'] === 'string' || data['thumbnail'] instanceof String)) {
            throw new Error("Expected the field `thumbnail` to be a primitive type in the JSON string but got " + data['thumbnail']);
        }
        // ensure the json data is a string
        if (data['title'] && !(typeof data['title'] === 'string' || data['title'] instanceof String)) {
            throw new Error("Expected the field `title` to be a primitive type in the JSON string but got " + data['title']);
        }
        // ensure the json data is a string
        if (data['url'] && !(typeof data['url'] === 'string' || data['url'] instanceof String)) {
            throw new Error("Expected the field `url` to be a primitive type in the JSON string but got " + data['url']);
        }

        return true;
    }


}



/**
 * @member {String} summary
 */
ExtractNews200ResponseVideosInner.prototype['summary'] = undefined;

/**
 * @member {Number} duration
 */
ExtractNews200ResponseVideosInner.prototype['duration'] = undefined;

/**
 * @member {String} thumbnail
 */
ExtractNews200ResponseVideosInner.prototype['thumbnail'] = undefined;

/**
 * @member {String} title
 */
ExtractNews200ResponseVideosInner.prototype['title'] = undefined;

/**
 * @member {String} url
 */
ExtractNews200ResponseVideosInner.prototype['url'] = undefined;






export default ExtractNews200ResponseVideosInner;

