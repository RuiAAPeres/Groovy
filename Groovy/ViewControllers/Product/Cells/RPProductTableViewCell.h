//
//  RPProductTableViewCell.h
//  Groovy
//
//  Created by Rui Peres on 31/08/2014.
//  Copyright (c) 2014 RP. All rights reserved.
//

@protocol RPProductCellViewModel;

@interface RPProductTableViewCell : UITableViewCell

- (void)updateWithProduct:(id<RPProductCellViewModel>)product;

@end
