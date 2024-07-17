/**
 * World News API
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 1.3.0
 * Contact: mail@worldnewsapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIGetGeoCoordinates_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIGetGeoCoordinates_200_response::OAIGetGeoCoordinates_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIGetGeoCoordinates_200_response::OAIGetGeoCoordinates_200_response() {
    this->initializeModel();
}

OAIGetGeoCoordinates_200_response::~OAIGetGeoCoordinates_200_response() {}

void OAIGetGeoCoordinates_200_response::initializeModel() {

    m_latitude_isSet = false;
    m_latitude_isValid = false;

    m_longitude_isSet = false;
    m_longitude_isValid = false;

    m_city_isSet = false;
    m_city_isValid = false;
}

void OAIGetGeoCoordinates_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIGetGeoCoordinates_200_response::fromJsonObject(QJsonObject json) {

    m_latitude_isValid = ::OpenAPI::fromJsonValue(m_latitude, json[QString("latitude")]);
    m_latitude_isSet = !json[QString("latitude")].isNull() && m_latitude_isValid;

    m_longitude_isValid = ::OpenAPI::fromJsonValue(m_longitude, json[QString("longitude")]);
    m_longitude_isSet = !json[QString("longitude")].isNull() && m_longitude_isValid;

    m_city_isValid = ::OpenAPI::fromJsonValue(m_city, json[QString("city")]);
    m_city_isSet = !json[QString("city")].isNull() && m_city_isValid;
}

QString OAIGetGeoCoordinates_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIGetGeoCoordinates_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_latitude_isSet) {
        obj.insert(QString("latitude"), ::OpenAPI::toJsonValue(m_latitude));
    }
    if (m_longitude_isSet) {
        obj.insert(QString("longitude"), ::OpenAPI::toJsonValue(m_longitude));
    }
    if (m_city_isSet) {
        obj.insert(QString("city"), ::OpenAPI::toJsonValue(m_city));
    }
    return obj;
}

double OAIGetGeoCoordinates_200_response::getLatitude() const {
    return m_latitude;
}
void OAIGetGeoCoordinates_200_response::setLatitude(const double &latitude) {
    m_latitude = latitude;
    m_latitude_isSet = true;
}

bool OAIGetGeoCoordinates_200_response::is_latitude_Set() const{
    return m_latitude_isSet;
}

bool OAIGetGeoCoordinates_200_response::is_latitude_Valid() const{
    return m_latitude_isValid;
}

double OAIGetGeoCoordinates_200_response::getLongitude() const {
    return m_longitude;
}
void OAIGetGeoCoordinates_200_response::setLongitude(const double &longitude) {
    m_longitude = longitude;
    m_longitude_isSet = true;
}

bool OAIGetGeoCoordinates_200_response::is_longitude_Set() const{
    return m_longitude_isSet;
}

bool OAIGetGeoCoordinates_200_response::is_longitude_Valid() const{
    return m_longitude_isValid;
}

QString OAIGetGeoCoordinates_200_response::getCity() const {
    return m_city;
}
void OAIGetGeoCoordinates_200_response::setCity(const QString &city) {
    m_city = city;
    m_city_isSet = true;
}

bool OAIGetGeoCoordinates_200_response::is_city_Set() const{
    return m_city_isSet;
}

bool OAIGetGeoCoordinates_200_response::is_city_Valid() const{
    return m_city_isValid;
}

bool OAIGetGeoCoordinates_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_latitude_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_longitude_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_city_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIGetGeoCoordinates_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
