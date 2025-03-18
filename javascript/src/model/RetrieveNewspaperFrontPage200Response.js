/**
 * World News API
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 2.1.0
 * Contact: mail@worldnewsapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';
import RetrieveNewspaperFrontPage200ResponseFrontPage from './RetrieveNewspaperFrontPage200ResponseFrontPage';

/**
 * The RetrieveNewspaperFrontPage200Response model module.
 * @module model/RetrieveNewspaperFrontPage200Response
 * @version 2.1.0
 */
class RetrieveNewspaperFrontPage200Response {
    /**
     * Constructs a new <code>RetrieveNewspaperFrontPage200Response</code>.
     * @alias module:model/RetrieveNewspaperFrontPage200Response
     */
    constructor() { 
        
        RetrieveNewspaperFrontPage200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>RetrieveNewspaperFrontPage200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/RetrieveNewspaperFrontPage200Response} obj Optional instance to populate.
     * @return {module:model/RetrieveNewspaperFrontPage200Response} The populated <code>RetrieveNewspaperFrontPage200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new RetrieveNewspaperFrontPage200Response();

            if (data.hasOwnProperty('front_page')) {
                obj['front_page'] = RetrieveNewspaperFrontPage200ResponseFrontPage.constructFromObject(data['front_page']);
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>RetrieveNewspaperFrontPage200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>RetrieveNewspaperFrontPage200Response</code>.
     */
    static validateJSON(data) {
        // validate the optional field `front_page`
        if (data['front_page']) { // data not null
          RetrieveNewspaperFrontPage200ResponseFrontPage.validateJSON(data['front_page']);
        }

        return true;
    }


}



/**
 * @member {module:model/RetrieveNewspaperFrontPage200ResponseFrontPage} front_page
 */
RetrieveNewspaperFrontPage200Response.prototype['front_page'] = undefined;






export default RetrieveNewspaperFrontPage200Response;

