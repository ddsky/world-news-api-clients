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
 * The GetGeoCoordinates200Response model module.
 * @module model/GetGeoCoordinates200Response
 * @version 1.3.2
 */
class GetGeoCoordinates200Response {
    /**
     * Constructs a new <code>GetGeoCoordinates200Response</code>.
     * @alias module:model/GetGeoCoordinates200Response
     */
    constructor() { 
        
        GetGeoCoordinates200Response.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>GetGeoCoordinates200Response</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/GetGeoCoordinates200Response} obj Optional instance to populate.
     * @return {module:model/GetGeoCoordinates200Response} The populated <code>GetGeoCoordinates200Response</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new GetGeoCoordinates200Response();

            if (data.hasOwnProperty('latitude')) {
                obj['latitude'] = ApiClient.convertToType(data['latitude'], 'Number');
            }
            if (data.hasOwnProperty('longitude')) {
                obj['longitude'] = ApiClient.convertToType(data['longitude'], 'Number');
            }
            if (data.hasOwnProperty('city')) {
                obj['city'] = ApiClient.convertToType(data['city'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>GetGeoCoordinates200Response</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>GetGeoCoordinates200Response</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['city'] && !(typeof data['city'] === 'string' || data['city'] instanceof String)) {
            throw new Error("Expected the field `city` to be a primitive type in the JSON string but got " + data['city']);
        }

        return true;
    }


}



/**
 * @member {Number} latitude
 */
GetGeoCoordinates200Response.prototype['latitude'] = undefined;

/**
 * @member {Number} longitude
 */
GetGeoCoordinates200Response.prototype['longitude'] = undefined;

/**
 * @member {String} city
 */
GetGeoCoordinates200Response.prototype['city'] = undefined;






export default GetGeoCoordinates200Response;

