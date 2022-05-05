/**
 * World News API
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@worldnewsapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAINews.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAINews::OAINews(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAINews::OAINews() {
    this->initializeModel();
}

OAINews::~OAINews() {}

void OAINews::initializeModel() {

    m_id_isSet = false;
    m_id_isValid = false;

    m_title_isSet = false;
    m_title_isValid = false;

    m_text_isSet = false;
    m_text_isValid = false;

    m_summary_isSet = false;
    m_summary_isValid = false;

    m_url_isSet = false;
    m_url_isValid = false;

    m_image_isSet = false;
    m_image_isValid = false;

    m_author_isSet = false;
    m_author_isValid = false;

    m_language_isSet = false;
    m_language_isValid = false;

    m_source_country_isSet = false;
    m_source_country_isValid = false;

    m_sentiment_isSet = false;
    m_sentiment_isValid = false;
}

void OAINews::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAINews::fromJsonObject(QJsonObject json) {

    m_id_isValid = ::OpenAPI::fromJsonValue(id, json[QString("id")]);
    m_id_isSet = !json[QString("id")].isNull() && m_id_isValid;

    m_title_isValid = ::OpenAPI::fromJsonValue(title, json[QString("title")]);
    m_title_isSet = !json[QString("title")].isNull() && m_title_isValid;

    m_text_isValid = ::OpenAPI::fromJsonValue(text, json[QString("text")]);
    m_text_isSet = !json[QString("text")].isNull() && m_text_isValid;

    m_summary_isValid = ::OpenAPI::fromJsonValue(summary, json[QString("summary")]);
    m_summary_isSet = !json[QString("summary")].isNull() && m_summary_isValid;

    m_url_isValid = ::OpenAPI::fromJsonValue(url, json[QString("url")]);
    m_url_isSet = !json[QString("url")].isNull() && m_url_isValid;

    m_image_isValid = ::OpenAPI::fromJsonValue(image, json[QString("image")]);
    m_image_isSet = !json[QString("image")].isNull() && m_image_isValid;

    m_author_isValid = ::OpenAPI::fromJsonValue(author, json[QString("author")]);
    m_author_isSet = !json[QString("author")].isNull() && m_author_isValid;

    m_language_isValid = ::OpenAPI::fromJsonValue(language, json[QString("language")]);
    m_language_isSet = !json[QString("language")].isNull() && m_language_isValid;

    m_source_country_isValid = ::OpenAPI::fromJsonValue(source_country, json[QString("source_country")]);
    m_source_country_isSet = !json[QString("source_country")].isNull() && m_source_country_isValid;

    m_sentiment_isValid = ::OpenAPI::fromJsonValue(sentiment, json[QString("sentiment")]);
    m_sentiment_isSet = !json[QString("sentiment")].isNull() && m_sentiment_isValid;
}

QString OAINews::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAINews::asJsonObject() const {
    QJsonObject obj;
    if (m_id_isSet) {
        obj.insert(QString("id"), ::OpenAPI::toJsonValue(id));
    }
    if (m_title_isSet) {
        obj.insert(QString("title"), ::OpenAPI::toJsonValue(title));
    }
    if (m_text_isSet) {
        obj.insert(QString("text"), ::OpenAPI::toJsonValue(text));
    }
    if (m_summary_isSet) {
        obj.insert(QString("summary"), ::OpenAPI::toJsonValue(summary));
    }
    if (m_url_isSet) {
        obj.insert(QString("url"), ::OpenAPI::toJsonValue(url));
    }
    if (m_image_isSet) {
        obj.insert(QString("image"), ::OpenAPI::toJsonValue(image));
    }
    if (m_author_isSet) {
        obj.insert(QString("author"), ::OpenAPI::toJsonValue(author));
    }
    if (m_language_isSet) {
        obj.insert(QString("language"), ::OpenAPI::toJsonValue(language));
    }
    if (m_source_country_isSet) {
        obj.insert(QString("source_country"), ::OpenAPI::toJsonValue(source_country));
    }
    if (m_sentiment_isSet) {
        obj.insert(QString("sentiment"), ::OpenAPI::toJsonValue(sentiment));
    }
    return obj;
}

qint32 OAINews::getId() const {
    return id;
}
void OAINews::setId(const qint32 &id) {
    this->id = id;
    this->m_id_isSet = true;
}

bool OAINews::is_id_Set() const{
    return m_id_isSet;
}

bool OAINews::is_id_Valid() const{
    return m_id_isValid;
}

QString OAINews::getTitle() const {
    return title;
}
void OAINews::setTitle(const QString &title) {
    this->title = title;
    this->m_title_isSet = true;
}

bool OAINews::is_title_Set() const{
    return m_title_isSet;
}

bool OAINews::is_title_Valid() const{
    return m_title_isValid;
}

QString OAINews::getText() const {
    return text;
}
void OAINews::setText(const QString &text) {
    this->text = text;
    this->m_text_isSet = true;
}

bool OAINews::is_text_Set() const{
    return m_text_isSet;
}

bool OAINews::is_text_Valid() const{
    return m_text_isValid;
}

QString OAINews::getSummary() const {
    return summary;
}
void OAINews::setSummary(const QString &summary) {
    this->summary = summary;
    this->m_summary_isSet = true;
}

bool OAINews::is_summary_Set() const{
    return m_summary_isSet;
}

bool OAINews::is_summary_Valid() const{
    return m_summary_isValid;
}

QString OAINews::getUrl() const {
    return url;
}
void OAINews::setUrl(const QString &url) {
    this->url = url;
    this->m_url_isSet = true;
}

bool OAINews::is_url_Set() const{
    return m_url_isSet;
}

bool OAINews::is_url_Valid() const{
    return m_url_isValid;
}

QString OAINews::getImage() const {
    return image;
}
void OAINews::setImage(const QString &image) {
    this->image = image;
    this->m_image_isSet = true;
}

bool OAINews::is_image_Set() const{
    return m_image_isSet;
}

bool OAINews::is_image_Valid() const{
    return m_image_isValid;
}

QString OAINews::getAuthor() const {
    return author;
}
void OAINews::setAuthor(const QString &author) {
    this->author = author;
    this->m_author_isSet = true;
}

bool OAINews::is_author_Set() const{
    return m_author_isSet;
}

bool OAINews::is_author_Valid() const{
    return m_author_isValid;
}

QString OAINews::getLanguage() const {
    return language;
}
void OAINews::setLanguage(const QString &language) {
    this->language = language;
    this->m_language_isSet = true;
}

bool OAINews::is_language_Set() const{
    return m_language_isSet;
}

bool OAINews::is_language_Valid() const{
    return m_language_isValid;
}

QString OAINews::getSourceCountry() const {
    return source_country;
}
void OAINews::setSourceCountry(const QString &source_country) {
    this->source_country = source_country;
    this->m_source_country_isSet = true;
}

bool OAINews::is_source_country_Set() const{
    return m_source_country_isSet;
}

bool OAINews::is_source_country_Valid() const{
    return m_source_country_isValid;
}

double OAINews::getSentiment() const {
    return sentiment;
}
void OAINews::setSentiment(const double &sentiment) {
    this->sentiment = sentiment;
    this->m_sentiment_isSet = true;
}

bool OAINews::is_sentiment_Set() const{
    return m_sentiment_isSet;
}

bool OAINews::is_sentiment_Valid() const{
    return m_sentiment_isValid;
}

bool OAINews::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_id_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_title_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_text_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_summary_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_url_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_image_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_author_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_language_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_source_country_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_sentiment_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAINews::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
