#import <Foundation/Foundation.h>
#import "OAIObject.h"

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


#import "OAINewsArticle.h"
@protocol OAINewsArticle;
@class OAINewsArticle;



@protocol OAISearchNewsResponse
@end

@interface OAISearchNewsResponse : OAIObject


@property(nonatomic) NSNumber* offset;

@property(nonatomic) NSNumber* number;

@property(nonatomic) NSNumber* available;

@property(nonatomic) NSArray<OAINewsArticle>* varNews;

@end