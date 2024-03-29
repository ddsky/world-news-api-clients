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
pub struct GeoCoordinatesResponse {
    #[serde(rename = "latitude")]
    pub latitude: f32,
    #[serde(rename = "longitude")]
    pub longitude: f32,
    #[serde(rename = "city", skip_serializing_if = "Option::is_none")]
    pub city: Option<String>,
}

impl GeoCoordinatesResponse {
    pub fn new(latitude: f32, longitude: f32) -> GeoCoordinatesResponse {
        GeoCoordinatesResponse {
            latitude,
            longitude,
            city: None,
        }
    }
}


