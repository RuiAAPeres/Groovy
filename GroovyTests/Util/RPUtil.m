//
//  RPUtil.m
//  Groovy
//
//  Created by Rui Peres on 31/08/2014.
//  Copyright (c) 2014 RP. All rights reserved.
//

#import "RPUtil.h"

@implementation RPUtil

+ (NSData *)loadFileDataWithName:(NSString *)name withType:(NSString *)type
{
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSString *filePath = [bundle pathForResource:name ofType:type];
    
    return [NSData dataWithContentsOfFile:filePath];
}

@end
