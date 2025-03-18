/*
 * World News API
 *
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 2.1.0
 * Contact: mail@worldnewsapi.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;
use serde::{Deserialize, Serialize};

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct TopNews200ResponseTopNewsInnerNewsInner {
    #[serde(rename = "summary", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub summary: Option<Option<String>>,
    #[serde(rename = "image", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub image: Option<Option<String>>,
    #[serde(rename = "author", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub author: Option<Option<String>>,
    #[serde(rename = "id", skip_serializing_if = "Option::is_none")]
    pub id: Option<i32>,
    #[serde(rename = "text", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub text: Option<Option<String>>,
    #[serde(rename = "title", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub title: Option<Option<String>>,
    #[serde(rename = "publish_date", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub publish_date: Option<Option<String>>,
    #[serde(rename = "url", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub url: Option<Option<String>>,
    #[serde(rename = "authors", skip_serializing_if = "Option::is_none")]
    pub authors: Option<Vec<String>>,
}

impl TopNews200ResponseTopNewsInnerNewsInner {
    pub fn new() -> TopNews200ResponseTopNewsInnerNewsInner {
        TopNews200ResponseTopNewsInnerNewsInner {
            summary: None,
            image: None,
            author: None,
            id: None,
            text: None,
            title: None,
            publish_date: None,
            url: None,
            authors: None,
        }
    }
}

