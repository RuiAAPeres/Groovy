//
//  RPProductsDataSource.h
//  Groovy
//
//  Created by Rui Peres on 31/08/2014.
//  Copyright (c) 2014 RP. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^RPProductsDataSourceCompletion)(NSArray *products, NSError *error);

@interface RPProductsDataSource : NSObject

+ (void)productsWithCompletionBlock:(RPProductsDataSourceCompletion)completionBlock;

@end
