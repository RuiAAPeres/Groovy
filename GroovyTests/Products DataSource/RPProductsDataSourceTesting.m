//
//  RPProductsDataSource.m
//  Groovy
//
//  Created by Rui Peres on 31/08/2014.
//  Copyright (c) 2014 RP. All rights reserved.
//

#import <XCTest/XCTest.h>
#define EXP_SHORTHAND
#import "Expecta.h"

#import "AsyncTesting.h"
#import "RPUtil.h"

#import "RPProductsDataSource.h"
#import "RPProductsDataSource+Parser.h"

@interface RPProductsDataSourceTesting : XCTestCase

@end

@implementation RPProductsDataSourceTesting

#pragma mark - Parsings

- (void)testParsingProducts
{
    StartBlock();
    NSData *data = [RPUtil loadFileDataWithName:@"mock_data" withType:@"json"];
    [RPProductsDataSource parseProductsData:data withCompletion:^(NSArray *products, NSError *error) {
        
        expect(products).toNot.beNil();
        expect(products).to.haveCountOf(11);
        expect(error).to.beNil;
        
        EndBlock();
    }];
    
    WaitUntilBlockCompletes();
}

@end
