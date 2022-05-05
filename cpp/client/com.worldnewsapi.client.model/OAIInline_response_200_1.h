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

/*
 * OAIInline_response_200_1.h
 *
 * 
 */

#ifndef OAIInline_response_200_1_H
#define OAIInline_response_200_1_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIInline_response_200_1 : public OAIObject {
public:
    OAIInline_response_200_1();
    OAIInline_response_200_1(QString json);
    ~OAIInline_response_200_1() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getTitle() const;
    void setTitle(const QString &title);
    bool is_title_Set() const;
    bool is_title_Valid() const;

    QString getText() const;
    void setText(const QString &text);
    bool is_text_Set() const;
    bool is_text_Valid() const;

    QString getUrl() const;
    void setUrl(const QString &url);
    bool is_url_Set() const;
    bool is_url_Valid() const;

    QString getImage() const;
    void setImage(const QString &image);
    bool is_image_Set() const;
    bool is_image_Valid() const;

    QString getAuthor() const;
    void setAuthor(const QString &author);
    bool is_author_Set() const;
    bool is_author_Valid() const;

    QString getLanguage() const;
    void setLanguage(const QString &language);
    bool is_language_Set() const;
    bool is_language_Valid() const;

    QString getSourceCountry() const;
    void setSourceCountry(const QString &source_country);
    bool is_source_country_Set() const;
    bool is_source_country_Valid() const;

    double getSentiment() const;
    void setSentiment(const double &sentiment);
    bool is_sentiment_Set() const;
    bool is_sentiment_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString title;
    bool m_title_isSet;
    bool m_title_isValid;

    QString text;
    bool m_text_isSet;
    bool m_text_isValid;

    QString url;
    bool m_url_isSet;
    bool m_url_isValid;

    QString image;
    bool m_image_isSet;
    bool m_image_isValid;

    QString author;
    bool m_author_isSet;
    bool m_author_isValid;

    QString language;
    bool m_language_isSet;
    bool m_language_isValid;

    QString source_country;
    bool m_source_country_isSet;
    bool m_source_country_isValid;

    double sentiment;
    bool m_sentiment_isSet;
    bool m_sentiment_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIInline_response_200_1)

#endif // OAIInline_response_200_1_H
