/**
 * World News API
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 2.2.0
 * Contact: mail@worldnewsapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIExtractNewsLinks_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIExtractNewsLinks_200_response::OAIExtractNewsLinks_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIExtractNewsLinks_200_response::OAIExtractNewsLinks_200_response() {
    this->initializeModel();
}

OAIExtractNewsLinks_200_response::~OAIExtractNewsLinks_200_response() {}

void OAIExtractNewsLinks_200_response::initializeModel() {

    m_news_links_isSet = false;
    m_news_links_isValid = false;
}

void OAIExtractNewsLinks_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIExtractNewsLinks_200_response::fromJsonObject(QJsonObject json) {

    m_news_links_isValid = ::OpenAPI::fromJsonValue(m_news_links, json[QString("news_links")]);
    m_news_links_isSet = !json[QString("news_links")].isNull() && m_news_links_isValid;
}

QString OAIExtractNewsLinks_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIExtractNewsLinks_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_news_links.size() > 0) {
        obj.insert(QString("news_links"), ::OpenAPI::toJsonValue(m_news_links));
    }
    return obj;
}

QList<QString> OAIExtractNewsLinks_200_response::getNewsLinks() const {
    return m_news_links;
}
void OAIExtractNewsLinks_200_response::setNewsLinks(const QList<QString> &news_links) {
    m_news_links = news_links;
    m_news_links_isSet = true;
}

bool OAIExtractNewsLinks_200_response::is_news_links_Set() const{
    return m_news_links_isSet;
}

bool OAIExtractNewsLinks_200_response::is_news_links_Valid() const{
    return m_news_links_isValid;
}

bool OAIExtractNewsLinks_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_news_links.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIExtractNewsLinks_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
