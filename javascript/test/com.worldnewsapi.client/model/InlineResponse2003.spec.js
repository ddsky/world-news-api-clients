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

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD.
    define(['expect.js', process.cwd()+'/src/com.worldnewsapi.client/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require(process.cwd()+'/src/com.worldnewsapi.client/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.WorldNewsApi);
  }
}(this, function(expect, WorldNewsApi) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new WorldNewsApi.InlineResponse2003();
  });

  var getProperty = function(object, getter, property) {
    // Use getter method if present; otherwise, get the property directly.
    if (typeof object[getter] === 'function')
      return object[getter]();
    else
      return object[property];
  }

  var setProperty = function(object, setter, property, value) {
    // Use setter method if present; otherwise, set the property directly.
    if (typeof object[setter] === 'function')
      object[setter](value);
    else
      object[property] = value;
  }

  describe('InlineResponse2003', function() {
    it('should create an instance of InlineResponse2003', function() {
      // uncomment below and update the code to test InlineResponse2003
      //var instance = new WorldNewsApi.InlineResponse2003();
      //expect(instance).to.be.a(WorldNewsApi.InlineResponse2003);
    });

    it('should have the property latitude (base name: "latitude")', function() {
      // uncomment below and update the code to test the property latitude
      //var instance = new WorldNewsApi.InlineResponse2003();
      //expect(instance).to.be();
    });

    it('should have the property longitude (base name: "longitude")', function() {
      // uncomment below and update the code to test the property longitude
      //var instance = new WorldNewsApi.InlineResponse2003();
      //expect(instance).to.be();
    });

    it('should have the property city (base name: "city")', function() {
      // uncomment below and update the code to test the property city
      //var instance = new WorldNewsApi.InlineResponse2003();
      //expect(instance).to.be();
    });

  });

}));