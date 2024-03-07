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





@protocol OAIExtractNewsResponse
@end

@interface OAIExtractNewsResponse : OAIObject


@property(nonatomic) NSString* title;

@property(nonatomic) NSString* text;

@property(nonatomic) NSString* url;

@property(nonatomic) NSString* image;

@property(nonatomic) NSString* author;

@property(nonatomic) NSString* language;

@property(nonatomic) NSString* sourceCountry;

@property(nonatomic) NSNumber* sentiment;

@end