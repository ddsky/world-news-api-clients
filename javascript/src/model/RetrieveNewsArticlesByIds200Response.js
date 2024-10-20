/**
 * World News API
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 2.0.0
 * Contact: mail@worldnewsapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';
import RetrieveNewsArticlesByIds200ResponseNewsInner from './RetrieveNewsArticlesByIds200ResponseNewsInner';

/**
 * The RetrieveNewsArticlesByIds200Response model module.
 * @module model/RetrieveNewsArticlesByIds200Response
 * @version 2.0.0
 */
class RetrieveNewsArticlesByIds200Response {
    /**
     * Constructs a new <code>RetrieveNewsArticlesByIds200Response</code>.
     * @alias module:model/RetrieveNewsArticlesByIds200Response
     */
    constructor() { 
        
        RetrieveNewsArticlesByIds200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>RetrieveNewsArticlesByIds200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/RetrieveNewsArticlesByIds200Response} obj Optional instance to populate.
     * @return {module:model/RetrieveNewsArticlesByIds200Response} The populated <code>RetrieveNewsArticlesByIds200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new RetrieveNewsArticlesByIds200Response();

            if (data.hasOwnProperty('news')) {
                obj['news'] = ApiClient.convertToType(data['news'], [RetrieveNewsArticlesByIds200ResponseNewsInner]);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>RetrieveNewsArticlesByIds200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>RetrieveNewsArticlesByIds200Response</code>.
     */
    static validateJSON(data) {
        if (data['news']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['news'])) {
                throw new Error("Expected the field `news` to be an array in the JSON data but got " + data['news']);
            }
            // validate the optional field `news` (array)
            for (const item of data['news']) {
                RetrieveNewsArticlesByIds200ResponseNewsInner.validateJSON(item);
            };
        }

        return true;
    }


}



/**
 * @member {Array.<module:model/RetrieveNewsArticlesByIds200ResponseNewsInner>} news
 */
RetrieveNewsArticlesByIds200Response.prototype['news'] = undefined;






export default RetrieveNewsArticlesByIds200Response;

