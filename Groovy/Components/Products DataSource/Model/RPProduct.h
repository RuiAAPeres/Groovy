//
//  RPProduct.h
//  Groovy
//
//  Created by Rui Peres on 31/08/2014.
//  Copyright (c) 2014 RP. All rights reserved.
//

#import "MTLModel.h"
#import "MTLJSONAdapter.h"
#import "RPProductCellViewModel.h"

@interface RPProduct : MTLModel <MTLJSONSerializing, RPProductCellViewModel>

@property(nonatomic,strong,readonly)NSString *name;
@property(nonatomic,strong,readonly)NSString *price;
@property(nonatomic,strong,readonly)NSArray *photos;
@property(nonatomic,strong,readonly)NSString *productDescription;

@end
