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
 */

package com.worldnewsapi.client.auth;

import com.worldnewsapi.client.Pair;

import java.util.Map;
import java.util.List;

public interface Authentication {
  /** Apply authentication settings to header and query params. */
  void applyToParams(List<Pair> queryParams, Map<String, String> headerParams);
}
