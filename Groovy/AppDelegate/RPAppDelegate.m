//
//  RPAppDelegate.m
//  Groovy
//
//  Created by Rui Peres on 31/08/2014.
//  Copyright (c) 2014 RP. All rights reserved.
//

#import "RPAppDelegate.h"

@implementation RPAppDelegate

#pragma mark - Dealloc

- (void)dealloc
{
    self.window = nil;
    [super dealloc];
}

#pragma mark - UIApplicationDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    return YES;
}

@end
