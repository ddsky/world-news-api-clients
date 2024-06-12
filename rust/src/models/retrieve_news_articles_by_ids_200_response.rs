/*
 * World News API
 *
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 1.2.0
 * Contact: mail@worldnewsapi.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct RetrieveNewsArticlesByIds200Response {
    #[serde(rename = "news", skip_serializing_if = "Option::is_none")]
    pub news: Option<Vec<models::RetrieveNewsArticlesByIds200ResponseNewsInner>>,
}

impl RetrieveNewsArticlesByIds200Response {
    pub fn new() -> RetrieveNewsArticlesByIds200Response {
        RetrieveNewsArticlesByIds200Response {
            news: None,
        }
    }
}
