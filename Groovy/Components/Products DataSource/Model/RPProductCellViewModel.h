//
//  RPProductCellViewModel.h
//  Groovy
//
//  Created by Rui Peres on 31/08/2014.
//  Copyright (c) 2014 RP. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol RPProductCellViewModel <NSObject>

@required

@property(nonatomic,strong,readonly)NSString *name;
@property(nonatomic,strong,readonly)NSString *price;
@property(nonatomic,strong,readonly)NSURL *photoURL;

@end
