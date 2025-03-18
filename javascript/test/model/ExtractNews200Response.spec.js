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
    instance = new Worldnewsapi.ExtractNews200Response();
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

  describe('ExtractNews200Response', function() {
    it('should create an instance of ExtractNews200Response', function() {
      // uncomment below and update the code to test ExtractNews200Response
      //var instance = new Worldnewsapi.ExtractNews200Response();
      //expect(instance).to.be.a(Worldnewsapi.ExtractNews200Response);
    });

    it('should have the property title (base name: "title")', function() {
      // uncomment below and update the code to test the property title
      //var instance = new Worldnewsapi.ExtractNews200Response();
      //expect(instance).to.be();
    });

    it('should have the property text (base name: "text")', function() {
      // uncomment below and update the code to test the property text
      //var instance = new Worldnewsapi.ExtractNews200Response();
      //expect(instance).to.be();
    });

    it('should have the property url (base name: "url")', function() {
      // uncomment below and update the code to test the property url
      //var instance = new Worldnewsapi.ExtractNews200Response();
      //expect(instance).to.be();
    });

    it('should have the property image (base name: "image")', function() {
      // uncomment below and update the code to test the property image
      //var instance = new Worldnewsapi.ExtractNews200Response();
      //expect(instance).to.be();
    });

    it('should have the property images (base name: "images")', function() {
      // uncomment below and update the code to test the property images
      //var instance = new Worldnewsapi.ExtractNews200Response();
      //expect(instance).to.be();
    });

    it('should have the property video (base name: "video")', function() {
      // uncomment below and update the code to test the property video
      //var instance = new Worldnewsapi.ExtractNews200Response();
      //expect(instance).to.be();
    });

    it('should have the property videos (base name: "videos")', function() {
      // uncomment below and update the code to test the property videos
      //var instance = new Worldnewsapi.ExtractNews200Response();
      //expect(instance).to.be();
    });

    it('should have the property publishDate (base name: "publish_date")', function() {
      // uncomment below and update the code to test the property publishDate
      //var instance = new Worldnewsapi.ExtractNews200Response();
      //expect(instance).to.be();
    });

    it('should have the property author (base name: "author")', function() {
      // uncomment below and update the code to test the property author
      //var instance = new Worldnewsapi.ExtractNews200Response();
      //expect(instance).to.be();
    });

    it('should have the property authors (base name: "authors")', function() {
      // uncomment below and update the code to test the property authors
      //var instance = new Worldnewsapi.ExtractNews200Response();
      //expect(instance).to.be();
    });

    it('should have the property language (base name: "language")', function() {
      // uncomment below and update the code to test the property language
      //var instance = new Worldnewsapi.ExtractNews200Response();
      //expect(instance).to.be();
    });

  });

}));
