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
pub struct TopNews200ResponseTopNewsInner {
    #[serde(rename = "news", skip_serializing_if = "Option::is_none")]
    pub news: Option<Vec<models::TopNews200ResponseTopNewsInnerNewsInner>>,
}

impl TopNews200ResponseTopNewsInner {
    pub fn new() -> TopNews200ResponseTopNewsInner {
        TopNews200ResponseTopNewsInner {
            news: None,
        }
    }
}

