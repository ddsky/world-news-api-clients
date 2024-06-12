#import "OAIRetrieveNewsArticlesByIds200ResponseNewsInner.h"

@implementation OAIRetrieveNewsArticlesByIds200ResponseNewsInner

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"summary": @"summary", @"image": @"image", @"sentiment": @"sentiment", @"catgory": @"catgory", @"language": @"language", @"title": @"title", @"url": @"url", @"sourceCountry": @"source_country", @"_id": @"id", @"text": @"text", @"publishDate": @"publish_date", @"authors": @"authors" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"summary", @"image", @"sentiment", @"catgory", @"language", @"title", @"url", @"sourceCountry", @"_id", @"text", @"publishDate", @"authors"];
  return [optionalProperties containsObject:propertyName];
}

@end
