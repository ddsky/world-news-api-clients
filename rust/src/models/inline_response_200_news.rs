/*
 * World News API
 *
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@worldnewsapi.com
 * Generated by: https://openapi-generator.tech
 */




#[derive(Clone, Debug, PartialEq, Default, Serialize, Deserialize)]
pub struct InlineResponse200News {
    #[serde(rename = "id", skip_serializing_if = "Option::is_none")]
    pub id: Option<i32>,
    #[serde(rename = "title", skip_serializing_if = "Option::is_none")]
    pub title: Option<String>,
    #[serde(rename = "text", skip_serializing_if = "Option::is_none")]
    pub text: Option<String>,
    #[serde(rename = "summary", skip_serializing_if = "Option::is_none")]
    pub summary: Option<String>,
    #[serde(rename = "url", skip_serializing_if = "Option::is_none")]
    pub url: Option<String>,
    #[serde(rename = "image", skip_serializing_if = "Option::is_none")]
    pub image: Option<String>,
    #[serde(rename = "author", skip_serializing_if = "Option::is_none")]
    pub author: Option<String>,
    #[serde(rename = "language", skip_serializing_if = "Option::is_none")]
    pub language: Option<String>,
    #[serde(rename = "source_country", skip_serializing_if = "Option::is_none")]
    pub source_country: Option<String>,
    #[serde(rename = "sentiment", skip_serializing_if = "Option::is_none")]
    pub sentiment: Option<f32>,
}

impl InlineResponse200News {
    pub fn new() -> InlineResponse200News {
        InlineResponse200News {
            id: None,
            title: None,
            text: None,
            summary: None,
            url: None,
            image: None,
            author: None,
            language: None,
            source_country: None,
            sentiment: None,
        }
    }
}


