//
//  RPProductDetailViewController.m
//  Groovy
//
//  Created by Rui Peres on 01/09/2014.
//  Copyright (c) 2014 RP. All rights reserved.
//

#import "RPProductDetailViewController.h"
#import "RPProduct.h"

@interface RPProductDetailViewController ()

@property(nonatomic,assign)IBOutlet UILabel *productDescriptionLabel;

@end

@implementation RPProductDetailViewController

#pragma mark - Dealloc

- (void)dealloc
{
    self.product = nil;
    self.productDescriptionLabel = nil;
    
    [super dealloc];
}

#pragma mark - View Life Cycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.productDescriptionLabel.text = self.product.productDescription;
}


@end
