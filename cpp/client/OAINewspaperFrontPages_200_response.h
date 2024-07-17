/**
 * World News API
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 1.3.1
 * Contact: mail@worldnewsapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAINewspaperFrontPages_200_response.h
 *
 * 
 */

#ifndef OAINewspaperFrontPages_200_response_H
#define OAINewspaperFrontPages_200_response_H

#include <QJsonObject>

#include "OAINewspaperFrontPages_200_response_front_page.h"

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAINewspaperFrontPages_200_response_front_page;

class OAINewspaperFrontPages_200_response : public OAIObject {
public:
    OAINewspaperFrontPages_200_response();
    OAINewspaperFrontPages_200_response(QString json);
    ~OAINewspaperFrontPages_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    OAINewspaperFrontPages_200_response_front_page getFrontPage() const;
    void setFrontPage(const OAINewspaperFrontPages_200_response_front_page &front_page);
    bool is_front_page_Set() const;
    bool is_front_page_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    OAINewspaperFrontPages_200_response_front_page m_front_page;
    bool m_front_page_isSet;
    bool m_front_page_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAINewspaperFrontPages_200_response)

#endif // OAINewspaperFrontPages_200_response_H
