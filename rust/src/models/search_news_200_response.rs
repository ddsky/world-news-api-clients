/*
 * World News API
 *
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 1.3.2
 * Contact: mail@worldnewsapi.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;
use serde::{Deserialize, Serialize};

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct SearchNews200Response {
    #[serde(rename = "offset", skip_serializing_if = "Option::is_none")]
    pub offset: Option<i32>,
    #[serde(rename = "number", skip_serializing_if = "Option::is_none")]
    pub number: Option<i32>,
    #[serde(rename = "available", skip_serializing_if = "Option::is_none")]
    pub available: Option<i32>,
    #[serde(rename = "news", skip_serializing_if = "Option::is_none")]
    pub news: Option<Vec<models::SearchNews200ResponseNewsInner>>,
}

impl SearchNews200Response {
    pub fn new() -> SearchNews200Response {
        SearchNews200Response {
            offset: None,
            number: None,
            available: None,
            news: None,
        }
    }
}

