/*
 * World News API
 *
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@worldnewsapi.com
 * Generated by: https://openapi-generator.tech
 */




#[derive(Clone, Debug, PartialEq, Serialize, Deserialize)]
pub struct ExtractLinksResponse {
    #[serde(rename = "news_links", skip_serializing_if = "Option::is_none")]
    pub news_links: Option<Vec<String>>,
}

impl ExtractLinksResponse {
    pub fn new() -> ExtractLinksResponse {
        ExtractLinksResponse {
            news_links: None,
        }
    }
}


