/**
 * World News API
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 2.2.0
 * Contact: mail@worldnewsapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The TopNews200ResponseTopNewsInnerNewsInner model module.
 * @module model/TopNews200ResponseTopNewsInnerNewsInner
 * @version 2.2.0
 */
class TopNews200ResponseTopNewsInnerNewsInner {
    /**
     * Constructs a new <code>TopNews200ResponseTopNewsInnerNewsInner</code>.
     * @alias module:model/TopNews200ResponseTopNewsInnerNewsInner
     */
    constructor() { 
        
        TopNews200ResponseTopNewsInnerNewsInner.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>TopNews200ResponseTopNewsInnerNewsInner</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/TopNews200ResponseTopNewsInnerNewsInner} obj Optional instance to populate.
     * @return {module:model/TopNews200ResponseTopNewsInnerNewsInner} The populated <code>TopNews200ResponseTopNewsInnerNewsInner</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new TopNews200ResponseTopNewsInnerNewsInner();

            if (data.hasOwnProperty('summary')) {
                obj['summary'] = ApiClient.convertToType(data['summary'], 'String');
            }
            if (data.hasOwnProperty('image')) {
                obj['image'] = ApiClient.convertToType(data['image'], 'String');
            }
            if (data.hasOwnProperty('author')) {
                obj['author'] = ApiClient.convertToType(data['author'], 'String');
            }
            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'Number');
            }
            if (data.hasOwnProperty('text')) {
                obj['text'] = ApiClient.convertToType(data['text'], 'String');
            }
            if (data.hasOwnProperty('title')) {
                obj['title'] = ApiClient.convertToType(data['title'], 'String');
            }
            if (data.hasOwnProperty('publish_date')) {
                obj['publish_date'] = ApiClient.convertToType(data['publish_date'], 'String');
            }
            if (data.hasOwnProperty('url')) {
                obj['url'] = ApiClient.convertToType(data['url'], 'String');
            }
            if (data.hasOwnProperty('authors')) {
                obj['authors'] = ApiClient.convertToType(data['authors'], ['String']);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>TopNews200ResponseTopNewsInnerNewsInner</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>TopNews200ResponseTopNewsInnerNewsInner</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['summary'] && !(typeof data['summary'] === 'string' || data['summary'] instanceof String)) {
            throw new Error("Expected the field `summary` to be a primitive type in the JSON string but got " + data['summary']);
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
        if (data['text'] && !(typeof data['text'] === 'string' || data['text'] instanceof String)) {
            throw new Error("Expected the field `text` to be a primitive type in the JSON string but got " + data['text']);
        }
        // ensure the json data is a string
        if (data['title'] && !(typeof data['title'] === 'string' || data['title'] instanceof String)) {
            throw new Error("Expected the field `title` to be a primitive type in the JSON string but got " + data['title']);
        }
        // ensure the json data is a string
        if (data['publish_date'] && !(typeof data['publish_date'] === 'string' || data['publish_date'] instanceof String)) {
            throw new Error("Expected the field `publish_date` to be a primitive type in the JSON string but got " + data['publish_date']);
        }
        // ensure the json data is a string
        if (data['url'] && !(typeof data['url'] === 'string' || data['url'] instanceof String)) {
            throw new Error("Expected the field `url` to be a primitive type in the JSON string but got " + data['url']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['authors'])) {
            throw new Error("Expected the field `authors` to be an array in the JSON data but got " + data['authors']);
        }

        return true;
    }


}



/**
 * @member {String} summary
 */
TopNews200ResponseTopNewsInnerNewsInner.prototype['summary'] = undefined;

/**
 * @member {String} image
 */
TopNews200ResponseTopNewsInnerNewsInner.prototype['image'] = undefined;

/**
 * @member {String} author
 */
TopNews200ResponseTopNewsInnerNewsInner.prototype['author'] = undefined;

/**
 * @member {Number} id
 */
TopNews200ResponseTopNewsInnerNewsInner.prototype['id'] = undefined;

/**
 * @member {String} text
 */
TopNews200ResponseTopNewsInnerNewsInner.prototype['text'] = undefined;

/**
 * @member {String} title
 */
TopNews200ResponseTopNewsInnerNewsInner.prototype['title'] = undefined;

/**
 * @member {String} publish_date
 */
TopNews200ResponseTopNewsInnerNewsInner.prototype['publish_date'] = undefined;

/**
 * @member {String} url
 */
TopNews200ResponseTopNewsInnerNewsInner.prototype['url'] = undefined;

/**
 * @member {Array.<String>} authors
 */
TopNews200ResponseTopNewsInnerNewsInner.prototype['authors'] = undefined;






export default TopNews200ResponseTopNewsInnerNewsInner;

