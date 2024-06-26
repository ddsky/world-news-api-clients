#import <Foundation/Foundation.h>
#import "OAIObject.h"

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





@protocol OAIGetGeoCoordinates200Response
@end

@interface OAIGetGeoCoordinates200Response : OAIObject


@property(nonatomic) NSNumber* latitude;

@property(nonatomic) NSNumber* longitude;

@property(nonatomic) NSString* city;

@end
