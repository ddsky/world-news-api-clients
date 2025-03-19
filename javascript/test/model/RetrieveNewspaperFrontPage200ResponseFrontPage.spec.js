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

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD.
    define(['expect.js', process.cwd()+'/src/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require(process.cwd()+'/src/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.Worldnewsapi);
  }
}(this, function(expect, Worldnewsapi) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new Worldnewsapi.RetrieveNewspaperFrontPage200ResponseFrontPage();
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

  describe('RetrieveNewspaperFrontPage200ResponseFrontPage', function() {
    it('should create an instance of RetrieveNewspaperFrontPage200ResponseFrontPage', function() {
      // uncomment below and update the code to test RetrieveNewspaperFrontPage200ResponseFrontPage
      //var instance = new Worldnewsapi.RetrieveNewspaperFrontPage200ResponseFrontPage();
      //expect(instance).to.be.a(Worldnewsapi.RetrieveNewspaperFrontPage200ResponseFrontPage);
    });

    it('should have the property name (base name: "name")', function() {
      // uncomment below and update the code to test the property name
      //var instance = new Worldnewsapi.RetrieveNewspaperFrontPage200ResponseFrontPage();
      //expect(instance).to.be();
    });

    it('should have the property date (base name: "date")', function() {
      // uncomment below and update the code to test the property date
      //var instance = new Worldnewsapi.RetrieveNewspaperFrontPage200ResponseFrontPage();
      //expect(instance).to.be();
    });

    it('should have the property country (base name: "country")', function() {
      // uncomment below and update the code to test the property country
      //var instance = new Worldnewsapi.RetrieveNewspaperFrontPage200ResponseFrontPage();
      //expect(instance).to.be();
    });

    it('should have the property image (base name: "image")', function() {
      // uncomment below and update the code to test the property image
      //var instance = new Worldnewsapi.RetrieveNewspaperFrontPage200ResponseFrontPage();
      //expect(instance).to.be();
    });

    it('should have the property language (base name: "language")', function() {
      // uncomment below and update the code to test the property language
      //var instance = new Worldnewsapi.RetrieveNewspaperFrontPage200ResponseFrontPage();
      //expect(instance).to.be();
    });

  });

}));
