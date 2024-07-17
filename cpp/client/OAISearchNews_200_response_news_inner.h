/**
 * World News API
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 1.3.2
 * Contact: mail@worldnewsapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAISearchNews_200_response_news_inner.h
 *
 * 
 */

#ifndef OAISearchNews_200_response_news_inner_H
#define OAISearchNews_200_response_news_inner_H

#include <QJsonObject>

#include <QList>
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAISearchNews_200_response_news_inner : public OAIObject {
public:
    OAISearchNews_200_response_news_inner();
    OAISearchNews_200_response_news_inner(QString json);
    ~OAISearchNews_200_response_news_inner() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getSummary() const;
    void setSummary(const QString &summary);
    bool is_summary_Set() const;
    bool is_summary_Valid() const;

    QString getImage() const;
    void setImage(const QString &image);
    bool is_image_Set() const;
    bool is_image_Valid() const;

    double getSentiment() const;
    void setSentiment(const double &sentiment);
    bool is_sentiment_Set() const;
    bool is_sentiment_Valid() const;

    QString getAuthor() const;
    void setAuthor(const QString &author);
    bool is_author_Set() const;
    bool is_author_Valid() const;

    QString getLanguage() const;
    void setLanguage(const QString &language);
    bool is_language_Set() const;
    bool is_language_Valid() const;

    QString getVideo() const;
    void setVideo(const QString &video);
    bool is_video_Set() const;
    bool is_video_Valid() const;

    QString getTitle() const;
    void setTitle(const QString &title);
    bool is_title_Set() const;
    bool is_title_Valid() const;

    QString getUrl() const;
    void setUrl(const QString &url);
    bool is_url_Set() const;
    bool is_url_Valid() const;

    QString getSourceCountry() const;
    void setSourceCountry(const QString &source_country);
    bool is_source_country_Set() const;
    bool is_source_country_Valid() const;

    qint32 getId() const;
    void setId(const qint32 &id);
    bool is_id_Set() const;
    bool is_id_Valid() const;

    QString getText() const;
    void setText(const QString &text);
    bool is_text_Set() const;
    bool is_text_Valid() const;

    QString getCategory() const;
    void setCategory(const QString &category);
    bool is_category_Set() const;
    bool is_category_Valid() const;

    QString getPublishDate() const;
    void setPublishDate(const QString &publish_date);
    bool is_publish_date_Set() const;
    bool is_publish_date_Valid() const;

    QList<QString> getAuthors() const;
    void setAuthors(const QList<QString> &authors);
    bool is_authors_Set() const;
    bool is_authors_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_summary;
    bool m_summary_isSet;
    bool m_summary_isValid;

    QString m_image;
    bool m_image_isSet;
    bool m_image_isValid;

    double m_sentiment;
    bool m_sentiment_isSet;
    bool m_sentiment_isValid;

    QString m_author;
    bool m_author_isSet;
    bool m_author_isValid;

    QString m_language;
    bool m_language_isSet;
    bool m_language_isValid;

    QString m_video;
    bool m_video_isSet;
    bool m_video_isValid;

    QString m_title;
    bool m_title_isSet;
    bool m_title_isValid;

    QString m_url;
    bool m_url_isSet;
    bool m_url_isValid;

    QString m_source_country;
    bool m_source_country_isSet;
    bool m_source_country_isValid;

    qint32 m_id;
    bool m_id_isSet;
    bool m_id_isValid;

    QString m_text;
    bool m_text_isSet;
    bool m_text_isValid;

    QString m_category;
    bool m_category_isSet;
    bool m_category_isValid;

    QString m_publish_date;
    bool m_publish_date_isSet;
    bool m_publish_date_isValid;

    QList<QString> m_authors;
    bool m_authors_isSet;
    bool m_authors_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISearchNews_200_response_news_inner)

#endif // OAISearchNews_200_response_news_inner_H
