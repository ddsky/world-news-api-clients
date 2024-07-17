/*
 * World News API
 *
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 1.3.0
 * Contact: mail@worldnewsapi.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;
use serde::{Deserialize, Serialize};

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct ExtractNewsLinks200Response {
    #[serde(rename = "news_links", skip_serializing_if = "Option::is_none")]
    pub news_links: Option<Vec<String>>,
}

impl ExtractNewsLinks200Response {
    pub fn new() -> ExtractNewsLinks200Response {
        ExtractNewsLinks200Response {
            news_links: None,
        }
    }
}

