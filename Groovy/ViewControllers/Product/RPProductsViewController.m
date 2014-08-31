//
//  RPProductsViewController.m
//  Groovy
//
//  Created by Rui Peres on 31/08/2014.
//  Copyright (c) 2014 RP. All rights reserved.
//

#import "RPProductsViewController.h"
#import "RPProductTableViewCell.h"
#import "RPProductsDataSource.h"

static NSString *const RPProductCellIdentifier = @"RPProductCellIdentifier";

@interface RPProductsViewController () <UITableViewDataSource, UITableViewDelegate>

@property(nonatomic,assign)IBOutlet UITableView *tableView;
@property(nonatomic,strong)NSArray *products;

@end

@implementation RPProductsViewController

#pragma mark - Dealloc

- (void)dealloc
{
    [_products release], _products = nil;
    self.tableView = nil;
    
    [super dealloc];
}

#pragma mark - View Life Cycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [RPProductsDataSource productsWithCompletionBlock:^(NSArray *products, NSError *error) {
        
        // TODO: Handle the Error
        self.products = products;
        [self.tableView reloadData];
    }];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.products count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    RPProductTableViewCell *productCell = [tableView dequeueReusableCellWithIdentifier:RPProductCellIdentifier];
    [productCell updateWithProduct:self.products[indexPath.row]];
    return productCell;
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70.0;
}

@end
