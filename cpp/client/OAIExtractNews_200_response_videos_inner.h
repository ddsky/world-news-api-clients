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

/*
 * OAIExtractNews_200_response_videos_inner.h
 *
 * 
 */

#ifndef OAIExtractNews_200_response_videos_inner_H
#define OAIExtractNews_200_response_videos_inner_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIExtractNews_200_response_videos_inner : public OAIObject {
public:
    OAIExtractNews_200_response_videos_inner();
    OAIExtractNews_200_response_videos_inner(QString json);
    ~OAIExtractNews_200_response_videos_inner() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getSummary() const;
    void setSummary(const QString &summary);
    bool is_summary_Set() const;
    bool is_summary_Valid() const;

    qint32 getDuration() const;
    void setDuration(const qint32 &duration);
    bool is_duration_Set() const;
    bool is_duration_Valid() const;

    QString getThumbnail() const;
    void setThumbnail(const QString &thumbnail);
    bool is_thumbnail_Set() const;
    bool is_thumbnail_Valid() const;

    QString getTitle() const;
    void setTitle(const QString &title);
    bool is_title_Set() const;
    bool is_title_Valid() const;

    QString getUrl() const;
    void setUrl(const QString &url);
    bool is_url_Set() const;
    bool is_url_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_summary;
    bool m_summary_isSet;
    bool m_summary_isValid;

    qint32 m_duration;
    bool m_duration_isSet;
    bool m_duration_isValid;

    QString m_thumbnail;
    bool m_thumbnail_isSet;
    bool m_thumbnail_isValid;

    QString m_title;
    bool m_title_isSet;
    bool m_title_isValid;

    QString m_url;
    bool m_url_isSet;
    bool m_url_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIExtractNews_200_response_videos_inner)

#endif // OAIExtractNews_200_response_videos_inner_H
