/**
 * World News API
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 1.3.2
 * Contact: mail@worldnewsapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The ExtractNews200ResponseImagesInner model module.
 * @module model/ExtractNews200ResponseImagesInner
 * @version 1.3.2
 */
class ExtractNews200ResponseImagesInner {
    /**
     * Constructs a new <code>ExtractNews200ResponseImagesInner</code>.
     * @alias module:model/ExtractNews200ResponseImagesInner
     */
    constructor() { 
        
        ExtractNews200ResponseImagesInner.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ExtractNews200ResponseImagesInner</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ExtractNews200ResponseImagesInner} obj Optional instance to populate.
     * @return {module:model/ExtractNews200ResponseImagesInner} The populated <code>ExtractNews200ResponseImagesInner</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ExtractNews200ResponseImagesInner();

            if (data.hasOwnProperty('width')) {
                obj['width'] = ApiClient.convertToType(data['width'], 'Number');
            }
            if (data.hasOwnProperty('title')) {
                obj['title'] = ApiClient.convertToType(data['title'], 'String');
            }
            if (data.hasOwnProperty('url')) {
                obj['url'] = ApiClient.convertToType(data['url'], 'String');
            }
            if (data.hasOwnProperty('height')) {
                obj['height'] = ApiClient.convertToType(data['height'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>ExtractNews200ResponseImagesInner</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ExtractNews200ResponseImagesInner</code>.
     */
    static validateJSON(data) {
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
 * @member {Number} width
 */
ExtractNews200ResponseImagesInner.prototype['width'] = undefined;

/**
 * @member {String} title
 */
ExtractNews200ResponseImagesInner.prototype['title'] = undefined;

/**
 * @member {String} url
 */
ExtractNews200ResponseImagesInner.prototype['url'] = undefined;

/**
 * @member {Number} height
 */
ExtractNews200ResponseImagesInner.prototype['height'] = undefined;






export default ExtractNews200ResponseImagesInner;

