//
//  RPProductsDataSource+Web.h
//  Groovy
//
//  Created by Rui Peres on 31/08/2014.
//  Copyright (c) 2014 RP. All rights reserved.
//

#import "RPProductsDataSource.h"

@interface RPProductsDataSource (Web)

+ (void)productsFromWebWithCompletionBlock:(RPProductsDataSourceCompletion)completionBlock;

@end
