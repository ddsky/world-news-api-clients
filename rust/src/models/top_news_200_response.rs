/*
 * World News API
 *
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 2.2.0
 * Contact: mail@worldnewsapi.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;
use serde::{Deserialize, Serialize};

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct TopNews200Response {
    #[serde(rename = "top_news", skip_serializing_if = "Option::is_none")]
    pub top_news: Option<Vec<models::TopNews200ResponseTopNewsInner>>,
    #[serde(rename = "language", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub language: Option<Option<String>>,
    #[serde(rename = "country", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub country: Option<Option<String>>,
}

impl TopNews200Response {
    pub fn new() -> TopNews200Response {
        TopNews200Response {
            top_news: None,
            language: None,
            country: None,
        }
    }
}

