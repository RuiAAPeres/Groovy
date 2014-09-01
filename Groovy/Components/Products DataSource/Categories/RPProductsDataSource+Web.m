//
//  RPProductsDataSource+Web.m
//  Groovy
//
//  Created by Rui Peres on 31/08/2014.
//  Copyright (c) 2014 RP. All rights reserved.
//

#import "RPProductsDataSource+Web.h"
#import "RPProductsDataSource+Parser.h"

static NSString *const RPProductsEndPoint = @"http://store.grooveshark.com/products.json";

@implementation RPProductsDataSource (Web)

+ (void)productsFromWebWithCompletionBlock:(RPProductsDataSourceCompletion)completionBlock
{
    NSURL *productsEndPointURL = [NSURL URLWithString:RPProductsEndPoint];
    NSURLSession *session = [NSURLSession sharedSession];
    
    [[session dataTaskWithURL:productsEndPointURL completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (error)
        {
            dispatch_async(dispatch_get_main_queue(), ^{
                completionBlock(nil,error);
            });
        }
        else
        {
            [RPProductsDataSource parseProductsData:data withCompletion:completionBlock];
        }
    }] resume];
}

@end
