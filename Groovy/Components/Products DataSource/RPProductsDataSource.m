//
//  RPProductsDataSource.m
//  Groovy
//
//  Created by Rui Peres on 31/08/2014.
//  Copyright (c) 2014 RP. All rights reserved.
//

#import "RPProductsDataSource.h"
#import "RPProductsDataSource+Web.h"

@implementation RPProductsDataSource

#pragma mark - Products Protocol

+ (void)productsWithCompletionBlock:(RPProductsDataSourceCompletion)completionBlock
{
    // This would be the right place to add the logic for persisting data.
    // TODO: Add a persisting layer
    [RPProductsDataSource productsFromWebWithCompletionBlock:completionBlock];
}


@end
