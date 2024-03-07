/**
 * World News API
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@worldnewsapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The ExtractNewsResponse model module.
 * @module model/ExtractNewsResponse
 * @version 1.1
 */
class ExtractNewsResponse {
    /**
     * Constructs a new <code>ExtractNewsResponse</code>.
     * @alias module:model/ExtractNewsResponse
     */
    constructor() { 
        
        ExtractNewsResponse.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ExtractNewsResponse</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ExtractNewsResponse} obj Optional instance to populate.
     * @return {module:model/ExtractNewsResponse} The populated <code>ExtractNewsResponse</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ExtractNewsResponse();

            if (data.hasOwnProperty('title')) {
                obj['title'] = ApiClient.convertToType(data['title'], 'String');
            }
            if (data.hasOwnProperty('text')) {
                obj['text'] = ApiClient.convertToType(data['text'], 'String');
            }
            if (data.hasOwnProperty('url')) {
                obj['url'] = ApiClient.convertToType(data['url'], 'String');
            }
            if (data.hasOwnProperty('image')) {
                obj['image'] = ApiClient.convertToType(data['image'], 'String');
            }
            if (data.hasOwnProperty('author')) {
                obj['author'] = ApiClient.convertToType(data['author'], 'String');
            }
            if (data.hasOwnProperty('language')) {
                obj['language'] = ApiClient.convertToType(data['language'], 'String');
            }
            if (data.hasOwnProperty('source_country')) {
                obj['source_country'] = ApiClient.convertToType(data['source_country'], 'String');
            }
            if (data.hasOwnProperty('sentiment')) {
                obj['sentiment'] = ApiClient.convertToType(data['sentiment'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>ExtractNewsResponse</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ExtractNewsResponse</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['title'] && !(typeof data['title'] === 'string' || data['title'] instanceof String)) {
            throw new Error("Expected the field `title` to be a primitive type in the JSON string but got " + data['title']);
        }
        // ensure the json data is a string
        if (data['text'] && !(typeof data['text'] === 'string' || data['text'] instanceof String)) {
            throw new Error("Expected the field `text` to be a primitive type in the JSON string but got " + data['text']);
        }
        // ensure the json data is a string
        if (data['url'] && !(typeof data['url'] === 'string' || data['url'] instanceof String)) {
            throw new Error("Expected the field `url` to be a primitive type in the JSON string but got " + data['url']);
        }
        // ensure the json data is a string
        if (data['image'] && !(typeof data['image'] === 'string' || data['image'] instanceof String)) {
            throw new Error("Expected the field `image` to be a primitive type in the JSON string but got " + data['image']);
        }
        // ensure the json data is a string
        if (data['author'] && !(typeof data['author'] === 'string' || data['author'] instanceof String)) {
            throw new Error("Expected the field `author` to be a primitive type in the JSON string but got " + data['author']);
        }
        // ensure the json data is a string
        if (data['language'] && !(typeof data['language'] === 'string' || data['language'] instanceof String)) {
            throw new Error("Expected the field `language` to be a primitive type in the JSON string but got " + data['language']);
        }
        // ensure the json data is a string
        if (data['source_country'] && !(typeof data['source_country'] === 'string' || data['source_country'] instanceof String)) {
            throw new Error("Expected the field `source_country` to be a primitive type in the JSON string but got " + data['source_country']);
        }

        return true;
    }


}



/**
 * @member {String} title
 */
ExtractNewsResponse.prototype['title'] = undefined;

/**
 * @member {String} text
 */
ExtractNewsResponse.prototype['text'] = undefined;

/**
 * @member {String} url
 */
ExtractNewsResponse.prototype['url'] = undefined;

/**
 * @member {String} image
 */
ExtractNewsResponse.prototype['image'] = undefined;

/**
 * @member {String} author
 */
ExtractNewsResponse.prototype['author'] = undefined;

/**
 * @member {String} language
 */
ExtractNewsResponse.prototype['language'] = undefined;

/**
 * @member {String} source_country
 */
ExtractNewsResponse.prototype['source_country'] = undefined;

/**
 * @member {Number} sentiment
 */
ExtractNewsResponse.prototype['sentiment'] = undefined;






export default ExtractNewsResponse;
