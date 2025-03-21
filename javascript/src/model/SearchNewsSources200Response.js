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
import SearchNewsSources200ResponseSourcesInner from './SearchNewsSources200ResponseSourcesInner';

/**
 * The SearchNewsSources200Response model module.
 * @module model/SearchNewsSources200Response
 * @version 2.2.0
 */
class SearchNewsSources200Response {
    /**
     * Constructs a new <code>SearchNewsSources200Response</code>.
     * @alias module:model/SearchNewsSources200Response
     */
    constructor() { 
        
        SearchNewsSources200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SearchNewsSources200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchNewsSources200Response} obj Optional instance to populate.
     * @return {module:model/SearchNewsSources200Response} The populated <code>SearchNewsSources200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchNewsSources200Response();

            if (data.hasOwnProperty('available')) {
                obj['available'] = ApiClient.convertToType(data['available'], 'Number');
            }
            if (data.hasOwnProperty('sources')) {
                obj['sources'] = ApiClient.convertToType(data['sources'], [SearchNewsSources200ResponseSourcesInner]);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchNewsSources200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchNewsSources200Response</code>.
     */
    static validateJSON(data) {
        if (data['sources']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['sources'])) {
                throw new Error("Expected the field `sources` to be an array in the JSON data but got " + data['sources']);
            }
            // validate the optional field `sources` (array)
            for (const item of data['sources']) {
                SearchNewsSources200ResponseSourcesInner.validateJSON(item);
            };
        }

        return true;
    }


}



/**
 * @member {Number} available
 */
SearchNewsSources200Response.prototype['available'] = undefined;

/**
 * @member {Array.<module:model/SearchNewsSources200ResponseSourcesInner>} sources
 */
SearchNewsSources200Response.prototype['sources'] = undefined;






export default SearchNewsSources200Response;

