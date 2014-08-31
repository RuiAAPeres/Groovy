//
//  RPProductTableViewCell.m
//  Groovy
//
//  Created by Rui Peres on 31/08/2014.
//  Copyright (c) 2014 RP. All rights reserved.
//

#import "RPProductTableViewCell.h"
#import "UIImageView+AFNetworking.h"

#import "RPProductCellViewModel.h"

@interface RPProductTableViewCell ()

@property(nonatomic,assign)IBOutlet UIImageView *productImageView;
@property(nonatomic,assign)IBOutlet UILabel *productPriceLabel;
@property(nonatomic,assign)IBOutlet UILabel *productNameLabel;

@end

@implementation RPProductTableViewCell

#pragma mark - Dealloc

- (void)dealloc
{
    self.productPriceLabel = nil;
    self.productNameLabel = nil;
    self.productImageView = nil;
    
    [super dealloc];
}

#pragma mark - UITableViewCell

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    self.productImageView.layer.cornerRadius = self.productImageView.frame.size.width / 2.0f;
    self.productImageView.layer.masksToBounds = YES;
}

#pragma mark - Setup

- (void)updateWithProduct:(id<RPProductCellViewModel>)product
{
    self.productNameLabel.text = product.name;
    self.productPriceLabel.text = [NSString stringWithFormat:@"$%@",product.price];
    [self.productImageView setImageWithURL:product.photoURL];
}

@end
