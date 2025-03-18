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

/*
 * OAITopNews_200_response_top_news_inner.h
 *
 * 
 */

#ifndef OAITopNews_200_response_top_news_inner_H
#define OAITopNews_200_response_top_news_inner_H

#include <QJsonObject>

#include "OAITopNews_200_response_top_news_inner_news_inner.h"
#include <QList>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAITopNews_200_response_top_news_inner_news_inner;

class OAITopNews_200_response_top_news_inner : public OAIObject {
public:
    OAITopNews_200_response_top_news_inner();
    OAITopNews_200_response_top_news_inner(QString json);
    ~OAITopNews_200_response_top_news_inner() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QList<OAITopNews_200_response_top_news_inner_news_inner> getNews() const;
    void setNews(const QList<OAITopNews_200_response_top_news_inner_news_inner> &news);
    bool is_news_Set() const;
    bool is_news_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QList<OAITopNews_200_response_top_news_inner_news_inner> m_news;
    bool m_news_isSet;
    bool m_news_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAITopNews_200_response_top_news_inner)

#endif // OAITopNews_200_response_top_news_inner_H
