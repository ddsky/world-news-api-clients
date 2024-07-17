/**
 * World News API
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 1.3.0
 * Contact: mail@worldnewsapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */


import ApiClient from './ApiClient';
import ExtractNews200Response from './model/ExtractNews200Response';
import ExtractNews200ResponseImagesInner from './model/ExtractNews200ResponseImagesInner';
import ExtractNews200ResponseVideosInner from './model/ExtractNews200ResponseVideosInner';
import ExtractNewsLinks200Response from './model/ExtractNewsLinks200Response';
import GetGeoCoordinates200Response from './model/GetGeoCoordinates200Response';
import NewspaperFrontPages200Response from './model/NewspaperFrontPages200Response';
import NewspaperFrontPages200ResponseFrontPage from './model/NewspaperFrontPages200ResponseFrontPage';
import RetrieveNewsArticlesByIds200Response from './model/RetrieveNewsArticlesByIds200Response';
import RetrieveNewsArticlesByIds200ResponseNewsInner from './model/RetrieveNewsArticlesByIds200ResponseNewsInner';
import SearchNews200Response from './model/SearchNews200Response';
import SearchNews200ResponseNewsInner from './model/SearchNews200ResponseNewsInner';
import TopNews200Response from './model/TopNews200Response';
import TopNews200ResponseTopNewsInner from './model/TopNews200ResponseTopNewsInner';
import TopNews200ResponseTopNewsInnerNewsInner from './model/TopNews200ResponseTopNewsInnerNewsInner';
import NewsApi from './api/NewsApi';


/**
* The world&#39;s news wrapped into a single API..<br>
* The <code>index</code> module provides access to constructors for all the classes which comprise the public API.
* <p>
* An AMD (recommended!) or CommonJS application will generally do something equivalent to the following:
* <pre>
* var Worldnewsapi = require('index'); // See note below*.
* var xxxSvc = new Worldnewsapi.XxxApi(); // Allocate the API class we're going to use.
* var yyyModel = new Worldnewsapi.Yyy(); // Construct a model instance.
* yyyModel.someProperty = 'someValue';
* ...
* var zzz = xxxSvc.doSomething(yyyModel); // Invoke the service.
* ...
* </pre>
* <em>*NOTE: For a top-level AMD script, use require(['index'], function(){...})
* and put the application logic within the callback function.</em>
* </p>
* <p>
* A non-AMD browser application (discouraged) might do something like this:
* <pre>
* var xxxSvc = new Worldnewsapi.XxxApi(); // Allocate the API class we're going to use.
* var yyy = new Worldnewsapi.Yyy(); // Construct a model instance.
* yyyModel.someProperty = 'someValue';
* ...
* var zzz = xxxSvc.doSomething(yyyModel); // Invoke the service.
* ...
* </pre>
* </p>
* @module index
* @version 1.3.0
*/
export {
    /**
     * The ApiClient constructor.
     * @property {module:ApiClient}
     */
    ApiClient,

    /**
     * The ExtractNews200Response model constructor.
     * @property {module:model/ExtractNews200Response}
     */
    ExtractNews200Response,

    /**
     * The ExtractNews200ResponseImagesInner model constructor.
     * @property {module:model/ExtractNews200ResponseImagesInner}
     */
    ExtractNews200ResponseImagesInner,

    /**
     * The ExtractNews200ResponseVideosInner model constructor.
     * @property {module:model/ExtractNews200ResponseVideosInner}
     */
    ExtractNews200ResponseVideosInner,

    /**
     * The ExtractNewsLinks200Response model constructor.
     * @property {module:model/ExtractNewsLinks200Response}
     */
    ExtractNewsLinks200Response,

    /**
     * The GetGeoCoordinates200Response model constructor.
     * @property {module:model/GetGeoCoordinates200Response}
     */
    GetGeoCoordinates200Response,

    /**
     * The NewspaperFrontPages200Response model constructor.
     * @property {module:model/NewspaperFrontPages200Response}
     */
    NewspaperFrontPages200Response,

    /**
     * The NewspaperFrontPages200ResponseFrontPage model constructor.
     * @property {module:model/NewspaperFrontPages200ResponseFrontPage}
     */
    NewspaperFrontPages200ResponseFrontPage,

    /**
     * The RetrieveNewsArticlesByIds200Response model constructor.
     * @property {module:model/RetrieveNewsArticlesByIds200Response}
     */
    RetrieveNewsArticlesByIds200Response,

    /**
     * The RetrieveNewsArticlesByIds200ResponseNewsInner model constructor.
     * @property {module:model/RetrieveNewsArticlesByIds200ResponseNewsInner}
     */
    RetrieveNewsArticlesByIds200ResponseNewsInner,

    /**
     * The SearchNews200Response model constructor.
     * @property {module:model/SearchNews200Response}
     */
    SearchNews200Response,

    /**
     * The SearchNews200ResponseNewsInner model constructor.
     * @property {module:model/SearchNews200ResponseNewsInner}
     */
    SearchNews200ResponseNewsInner,

    /**
     * The TopNews200Response model constructor.
     * @property {module:model/TopNews200Response}
     */
    TopNews200Response,

    /**
     * The TopNews200ResponseTopNewsInner model constructor.
     * @property {module:model/TopNews200ResponseTopNewsInner}
     */
    TopNews200ResponseTopNewsInner,

    /**
     * The TopNews200ResponseTopNewsInnerNewsInner model constructor.
     * @property {module:model/TopNews200ResponseTopNewsInnerNewsInner}
     */
    TopNews200ResponseTopNewsInnerNewsInner,

    /**
    * The NewsApi service constructor.
    * @property {module:api/NewsApi}
    */
    NewsApi
};
