/**
 * World News API
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 1.2.0
 * Contact: mail@worldnewsapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAISearchNews_200_response.h
 *
 * 
 */

#ifndef OAISearchNews_200_response_H
#define OAISearchNews_200_response_H

#include <QJsonObject>

#include "OAISearchNews_200_response_news_inner.h"
#include <QList>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAISearchNews_200_response_news_inner;

class OAISearchNews_200_response : public OAIObject {
public:
    OAISearchNews_200_response();
    OAISearchNews_200_response(QString json);
    ~OAISearchNews_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    qint32 getOffset() const;
    void setOffset(const qint32 &offset);
    bool is_offset_Set() const;
    bool is_offset_Valid() const;

    qint32 getNumber() const;
    void setNumber(const qint32 &number);
    bool is_number_Set() const;
    bool is_number_Valid() const;

    qint32 getAvailable() const;
    void setAvailable(const qint32 &available);
    bool is_available_Set() const;
    bool is_available_Valid() const;

    QList<OAISearchNews_200_response_news_inner> getNews() const;
    void setNews(const QList<OAISearchNews_200_response_news_inner> &news);
    bool is_news_Set() const;
    bool is_news_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    qint32 m_offset;
    bool m_offset_isSet;
    bool m_offset_isValid;

    qint32 m_number;
    bool m_number_isSet;
    bool m_number_isValid;

    qint32 m_available;
    bool m_available_isSet;
    bool m_available_isValid;

    QList<OAISearchNews_200_response_news_inner> m_news;
    bool m_news_isSet;
    bool m_news_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISearchNews_200_response)

#endif // OAISearchNews_200_response_H
