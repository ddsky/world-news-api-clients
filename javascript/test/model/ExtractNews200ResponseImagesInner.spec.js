/**
 * World News API
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 1.3.1
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
    instance = new Worldnewsapi.ExtractNews200ResponseImagesInner();
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

  describe('ExtractNews200ResponseImagesInner', function() {
    it('should create an instance of ExtractNews200ResponseImagesInner', function() {
      // uncomment below and update the code to test ExtractNews200ResponseImagesInner
      //var instance = new Worldnewsapi.ExtractNews200ResponseImagesInner();
      //expect(instance).to.be.a(Worldnewsapi.ExtractNews200ResponseImagesInner);
    });

    it('should have the property width (base name: "width")', function() {
      // uncomment below and update the code to test the property width
      //var instance = new Worldnewsapi.ExtractNews200ResponseImagesInner();
      //expect(instance).to.be();
    });

    it('should have the property title (base name: "title")', function() {
      // uncomment below and update the code to test the property title
      //var instance = new Worldnewsapi.ExtractNews200ResponseImagesInner();
      //expect(instance).to.be();
    });

    it('should have the property url (base name: "url")', function() {
      // uncomment below and update the code to test the property url
      //var instance = new Worldnewsapi.ExtractNews200ResponseImagesInner();
      //expect(instance).to.be();
    });

    it('should have the property height (base name: "height")', function() {
      // uncomment below and update the code to test the property height
      //var instance = new Worldnewsapi.ExtractNews200ResponseImagesInner();
      //expect(instance).to.be();
    });

  });

}));
