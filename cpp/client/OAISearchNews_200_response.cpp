/**
 * World News API
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 2.1.0
 * Contact: mail@worldnewsapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAISearchNews_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAISearchNews_200_response::OAISearchNews_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAISearchNews_200_response::OAISearchNews_200_response() {
    this->initializeModel();
}

OAISearchNews_200_response::~OAISearchNews_200_response() {}

void OAISearchNews_200_response::initializeModel() {

    m_offset_isSet = false;
    m_offset_isValid = false;

    m_number_isSet = false;
    m_number_isValid = false;

    m_available_isSet = false;
    m_available_isValid = false;

    m_news_isSet = false;
    m_news_isValid = false;
}

void OAISearchNews_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAISearchNews_200_response::fromJsonObject(QJsonObject json) {

    m_offset_isValid = ::OpenAPI::fromJsonValue(m_offset, json[QString("offset")]);
    m_offset_isSet = !json[QString("offset")].isNull() && m_offset_isValid;

    m_number_isValid = ::OpenAPI::fromJsonValue(m_number, json[QString("number")]);
    m_number_isSet = !json[QString("number")].isNull() && m_number_isValid;

    m_available_isValid = ::OpenAPI::fromJsonValue(m_available, json[QString("available")]);
    m_available_isSet = !json[QString("available")].isNull() && m_available_isValid;

    m_news_isValid = ::OpenAPI::fromJsonValue(m_news, json[QString("news")]);
    m_news_isSet = !json[QString("news")].isNull() && m_news_isValid;
}

QString OAISearchNews_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAISearchNews_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_offset_isSet) {
        obj.insert(QString("offset"), ::OpenAPI::toJsonValue(m_offset));
    }
    if (m_number_isSet) {
        obj.insert(QString("number"), ::OpenAPI::toJsonValue(m_number));
    }
    if (m_available_isSet) {
        obj.insert(QString("available"), ::OpenAPI::toJsonValue(m_available));
    }
    if (m_news.size() > 0) {
        obj.insert(QString("news"), ::OpenAPI::toJsonValue(m_news));
    }
    return obj;
}

qint32 OAISearchNews_200_response::getOffset() const {
    return m_offset;
}
void OAISearchNews_200_response::setOffset(const qint32 &offset) {
    m_offset = offset;
    m_offset_isSet = true;
}

bool OAISearchNews_200_response::is_offset_Set() const{
    return m_offset_isSet;
}

bool OAISearchNews_200_response::is_offset_Valid() const{
    return m_offset_isValid;
}

qint32 OAISearchNews_200_response::getNumber() const {
    return m_number;
}
void OAISearchNews_200_response::setNumber(const qint32 &number) {
    m_number = number;
    m_number_isSet = true;
}

bool OAISearchNews_200_response::is_number_Set() const{
    return m_number_isSet;
}

bool OAISearchNews_200_response::is_number_Valid() const{
    return m_number_isValid;
}

qint32 OAISearchNews_200_response::getAvailable() const {
    return m_available;
}
void OAISearchNews_200_response::setAvailable(const qint32 &available) {
    m_available = available;
    m_available_isSet = true;
}

bool OAISearchNews_200_response::is_available_Set() const{
    return m_available_isSet;
}

bool OAISearchNews_200_response::is_available_Valid() const{
    return m_available_isValid;
}

QList<OAISearchNews_200_response_news_inner> OAISearchNews_200_response::getNews() const {
    return m_news;
}
void OAISearchNews_200_response::setNews(const QList<OAISearchNews_200_response_news_inner> &news) {
    m_news = news;
    m_news_isSet = true;
}

bool OAISearchNews_200_response::is_news_Set() const{
    return m_news_isSet;
}

bool OAISearchNews_200_response::is_news_Valid() const{
    return m_news_isValid;
}

bool OAISearchNews_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_offset_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_number_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_available_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_news.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAISearchNews_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
