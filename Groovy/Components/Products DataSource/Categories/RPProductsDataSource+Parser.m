//
//  RPProductsDataSource+Parser.m
//  Groovy
//
//  Created by Rui Peres on 31/08/2014.
//  Copyright (c) 2014 RP. All rights reserved.
//

#import "RPProductsDataSource+Parser.h"
#import "RPProduct.h"
#import "Mantle.h"

@implementation RPProductsDataSource (Parser)

+ (void)parseProductsData:(NSData *)data withCompletion:(RPProductsDataSourceCompletion)completion
{
    NSError *error = nil;
    NSArray *products = nil;
    NSArray *productsJSON = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
    
    products = [MTLJSONAdapter modelsOfClass:[RPProduct class] fromJSONArray:productsJSON error:&error];
    
    dispatch_async(dispatch_get_main_queue(), ^(void) {
        completion(products,error);
    });
}

@end
