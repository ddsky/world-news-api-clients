/**
 * World News API
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 1.1.1
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
    instance = new Worldnewsapi.NewsApi();
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

  describe('NewsApi', function() {
    describe('extractNews', function() {
      it('should call extractNews successfully', function(done) {
        //uncomment below and update the code to test extractNews
        //instance.extractNews(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('extractNewsLinks', function() {
      it('should call extractNewsLinks successfully', function(done) {
        //uncomment below and update the code to test extractNewsLinks
        //instance.extractNewsLinks(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getGeoCoordinates', function() {
      it('should call getGeoCoordinates successfully', function(done) {
        //uncomment below and update the code to test getGeoCoordinates
        //instance.getGeoCoordinates(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('newsWebsiteToRSSFeed', function() {
      it('should call newsWebsiteToRSSFeed successfully', function(done) {
        //uncomment below and update the code to test newsWebsiteToRSSFeed
        //instance.newsWebsiteToRSSFeed(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('searchNews', function() {
      it('should call searchNews successfully', function(done) {
        //uncomment below and update the code to test searchNews
        //instance.searchNews(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('topNews', function() {
      it('should call topNews successfully', function(done) {
        //uncomment below and update the code to test topNews
        //instance.topNews(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
  });

}));
