/**
 * World News API
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@worldnewsapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The InlineResponse200News model module.
 * @module com.worldnewsapi.client/com.worldnewsapi.client.model/InlineResponse200News
 * @version 1.0
 */
class InlineResponse200News {
    /**
     * Constructs a new <code>InlineResponse200News</code>.
     * @alias module:com.worldnewsapi.client/com.worldnewsapi.client.model/InlineResponse200News
     */
    constructor() { 
        
        InlineResponse200News.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>InlineResponse200News</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:com.worldnewsapi.client/com.worldnewsapi.client.model/InlineResponse200News} obj Optional instance to populate.
     * @return {module:com.worldnewsapi.client/com.worldnewsapi.client.model/InlineResponse200News} The populated <code>InlineResponse200News</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new InlineResponse200News();

            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'Number');
            }
            if (data.hasOwnProperty('title')) {
                obj['title'] = ApiClient.convertToType(data['title'], 'String');
            }
            if (data.hasOwnProperty('text')) {
                obj['text'] = ApiClient.convertToType(data['text'], 'String');
            }
            if (data.hasOwnProperty('summary')) {
                obj['summary'] = ApiClient.convertToType(data['summary'], 'String');
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


}

/**
 * @member {Number} id
 */
InlineResponse200News.prototype['id'] = undefined;

/**
 * @member {String} title
 */
InlineResponse200News.prototype['title'] = undefined;

/**
 * @member {String} text
 */
InlineResponse200News.prototype['text'] = undefined;

/**
 * @member {String} summary
 */
InlineResponse200News.prototype['summary'] = undefined;

/**
 * @member {String} url
 */
InlineResponse200News.prototype['url'] = undefined;

/**
 * @member {String} image
 */
InlineResponse200News.prototype['image'] = undefined;

/**
 * @member {String} author
 */
InlineResponse200News.prototype['author'] = undefined;

/**
 * @member {String} language
 */
InlineResponse200News.prototype['language'] = undefined;

/**
 * @member {String} source_country
 */
InlineResponse200News.prototype['source_country'] = undefined;

/**
 * @member {Number} sentiment
 */
InlineResponse200News.prototype['sentiment'] = undefined;






export default InlineResponse200News;

