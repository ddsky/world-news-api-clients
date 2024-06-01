#import "OAITopNews200ResponseTopNewsInnerNewsInner.h"

@implementation OAITopNews200ResponseTopNewsInnerNewsInner

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"summary": @"summary", @"image": @"image", @"_id": @"id", @"text": @"text", @"title": @"title", @"publishDate": @"publish_date", @"url": @"url", @"authors": @"authors" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"summary", @"image", @"_id", @"text", @"title", @"publishDate", @"url", @"authors"];
  return [optionalProperties containsObject:propertyName];
}

@end
