//
//  RPProduct.m
//  Groovy
//
//  Created by Rui Peres on 31/08/2014.
//  Copyright (c) 2014 RP. All rights reserved.
//

#import "RPProduct.h"
#import "Mantle.h"

@interface RPProduct ()

@property(nonatomic,strong)NSString *name;
@property(nonatomic,strong)NSString *price;
@property(nonatomic,strong)NSArray *photos;
@property(nonatomic,strong)NSString *productDescription;

@end

@implementation RPProduct

#pragma mark - Dealloc

- (void)dealloc
{
    self.name = nil;
    self.price = nil;
    self.photos = nil;
    
    [super dealloc];
}

#pragma mark - Mantle

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"photos" : @"photos",
             @"productDescription" : @"description"
             };
}

#pragma mark - RPProductCellViewModel

- (NSURL *)photoURL
{
    NSString *photoURL = self.photos[0][@"photo"][@"medium"];
    NSURLComponents *components = [[[NSURLComponents alloc] initWithString:photoURL] autorelease];
    [components setScheme:@"http"];
    return components.URL;
}

@end
