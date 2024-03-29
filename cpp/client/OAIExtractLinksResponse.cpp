/**
 * World News API
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@worldnewsapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIExtractLinksResponse.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIExtractLinksResponse::OAIExtractLinksResponse(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIExtractLinksResponse::OAIExtractLinksResponse() {
    this->initializeModel();
}

OAIExtractLinksResponse::~OAIExtractLinksResponse() {}

void OAIExtractLinksResponse::initializeModel() {

    m_news_links_isSet = false;
    m_news_links_isValid = false;
}

void OAIExtractLinksResponse::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIExtractLinksResponse::fromJsonObject(QJsonObject json) {

    m_news_links_isValid = ::OpenAPI::fromJsonValue(m_news_links, json[QString("news_links")]);
    m_news_links_isSet = !json[QString("news_links")].isNull() && m_news_links_isValid;
}

QString OAIExtractLinksResponse::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIExtractLinksResponse::asJsonObject() const {
    QJsonObject obj;
    if (m_news_links.size() > 0) {
        obj.insert(QString("news_links"), ::OpenAPI::toJsonValue(m_news_links));
    }
    return obj;
}

QList<QString> OAIExtractLinksResponse::getNewsLinks() const {
    return m_news_links;
}
void OAIExtractLinksResponse::setNewsLinks(const QList<QString> &news_links) {
    m_news_links = news_links;
    m_news_links_isSet = true;
}

bool OAIExtractLinksResponse::is_news_links_Set() const{
    return m_news_links_isSet;
}

bool OAIExtractLinksResponse::is_news_links_Valid() const{
    return m_news_links_isValid;
}

bool OAIExtractLinksResponse::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_news_links.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIExtractLinksResponse::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
