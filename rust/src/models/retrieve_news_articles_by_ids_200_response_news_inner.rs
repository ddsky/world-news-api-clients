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
pub struct RetrieveNewsArticlesByIds200ResponseNewsInner {
    #[serde(rename = "summary", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub summary: Option<Option<String>>,
    #[serde(rename = "image", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub image: Option<Option<String>>,
    #[serde(rename = "sentiment", skip_serializing_if = "Option::is_none")]
    pub sentiment: Option<f64>,
    #[serde(rename = "language", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub language: Option<Option<String>>,
    #[serde(rename = "title", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub title: Option<Option<String>>,
    #[serde(rename = "url", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub url: Option<Option<String>>,
    #[serde(rename = "source_country", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub source_country: Option<Option<String>>,
    #[serde(rename = "id", skip_serializing_if = "Option::is_none")]
    pub id: Option<i32>,
    #[serde(rename = "text", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub text: Option<Option<String>>,
    #[serde(rename = "category", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub category: Option<Option<String>>,
    #[serde(rename = "publish_date", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub publish_date: Option<Option<String>>,
    #[serde(rename = "authors", skip_serializing_if = "Option::is_none")]
    pub authors: Option<Vec<String>>,
}

impl RetrieveNewsArticlesByIds200ResponseNewsInner {
    pub fn new() -> RetrieveNewsArticlesByIds200ResponseNewsInner {
        RetrieveNewsArticlesByIds200ResponseNewsInner {
            summary: None,
            image: None,
            sentiment: None,
            language: None,
            title: None,
            url: None,
            source_country: None,
            id: None,
            text: None,
            category: None,
            publish_date: None,
            authors: None,
        }
    }
}

