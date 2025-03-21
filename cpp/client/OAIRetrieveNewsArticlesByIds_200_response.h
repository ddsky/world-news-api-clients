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
 * OAIRetrieveNewsArticlesByIds_200_response.h
 *
 * 
 */

#ifndef OAIRetrieveNewsArticlesByIds_200_response_H
#define OAIRetrieveNewsArticlesByIds_200_response_H

#include <QJsonObject>

#include "OAIRetrieveNewsArticlesByIds_200_response_news_inner.h"
#include <QList>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAIRetrieveNewsArticlesByIds_200_response_news_inner;

class OAIRetrieveNewsArticlesByIds_200_response : public OAIObject {
public:
    OAIRetrieveNewsArticlesByIds_200_response();
    OAIRetrieveNewsArticlesByIds_200_response(QString json);
    ~OAIRetrieveNewsArticlesByIds_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QList<OAIRetrieveNewsArticlesByIds_200_response_news_inner> getNews() const;
    void setNews(const QList<OAIRetrieveNewsArticlesByIds_200_response_news_inner> &news);
    bool is_news_Set() const;
    bool is_news_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QList<OAIRetrieveNewsArticlesByIds_200_response_news_inner> m_news;
    bool m_news_isSet;
    bool m_news_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIRetrieveNewsArticlesByIds_200_response)

#endif // OAIRetrieveNewsArticlesByIds_200_response_H
