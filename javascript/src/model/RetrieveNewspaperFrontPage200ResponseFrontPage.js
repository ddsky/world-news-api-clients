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
 * The RetrieveNewspaperFrontPage200ResponseFrontPage model module.
 * @module model/RetrieveNewspaperFrontPage200ResponseFrontPage
 * @version 1.3.2
 */
class RetrieveNewspaperFrontPage200ResponseFrontPage {
    /**
     * Constructs a new <code>RetrieveNewspaperFrontPage200ResponseFrontPage</code>.
     * @alias module:model/RetrieveNewspaperFrontPage200ResponseFrontPage
     */
    constructor() { 
        
        RetrieveNewspaperFrontPage200ResponseFrontPage.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>RetrieveNewspaperFrontPage200ResponseFrontPage</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/RetrieveNewspaperFrontPage200ResponseFrontPage} obj Optional instance to populate.
     * @return {module:model/RetrieveNewspaperFrontPage200ResponseFrontPage} The populated <code>RetrieveNewspaperFrontPage200ResponseFrontPage</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new RetrieveNewspaperFrontPage200ResponseFrontPage();

            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('date')) {
                obj['date'] = ApiClient.convertToType(data['date'], 'String');
            }
            if (data.hasOwnProperty('country')) {
                obj['country'] = ApiClient.convertToType(data['country'], 'String');
            }
            if (data.hasOwnProperty('image')) {
                obj['image'] = ApiClient.convertToType(data['image'], 'String');
            }
            if (data.hasOwnProperty('language')) {
                obj['language'] = ApiClient.convertToType(data['language'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>RetrieveNewspaperFrontPage200ResponseFrontPage</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>RetrieveNewspaperFrontPage200ResponseFrontPage</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['name'] && !(typeof data['name'] === 'string' || data['name'] instanceof String)) {
            throw new Error("Expected the field `name` to be a primitive type in the JSON string but got " + data['name']);
        }
        // ensure the json data is a string
        if (data['date'] && !(typeof data['date'] === 'string' || data['date'] instanceof String)) {
            throw new Error("Expected the field `date` to be a primitive type in the JSON string but got " + data['date']);
        }
        // ensure the json data is a string
        if (data['country'] && !(typeof data['country'] === 'string' || data['country'] instanceof String)) {
            throw new Error("Expected the field `country` to be a primitive type in the JSON string but got " + data['country']);
        }
        // ensure the json data is a string
        if (data['image'] && !(typeof data['image'] === 'string' || data['image'] instanceof String)) {
            throw new Error("Expected the field `image` to be a primitive type in the JSON string but got " + data['image']);
        }
        // ensure the json data is a string
        if (data['language'] && !(typeof data['language'] === 'string' || data['language'] instanceof String)) {
            throw new Error("Expected the field `language` to be a primitive type in the JSON string but got " + data['language']);
        }

        return true;
    }


}



/**
 * @member {String} name
 */
RetrieveNewspaperFrontPage200ResponseFrontPage.prototype['name'] = undefined;

/**
 * @member {String} date
 */
RetrieveNewspaperFrontPage200ResponseFrontPage.prototype['date'] = undefined;

/**
 * @member {String} country
 */
RetrieveNewspaperFrontPage200ResponseFrontPage.prototype['country'] = undefined;

/**
 * @member {String} image
 */
RetrieveNewspaperFrontPage200ResponseFrontPage.prototype['image'] = undefined;

/**
 * @member {String} language
 */
RetrieveNewspaperFrontPage200ResponseFrontPage.prototype['language'] = undefined;






export default RetrieveNewspaperFrontPage200ResponseFrontPage;
