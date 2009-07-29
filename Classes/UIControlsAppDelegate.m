//
//  UIControlsAppDelegate.m
//  UIControls
//
//  Created by Scott Taylor on 7/29/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "UIControlsAppDelegate.h"
#import "UIControlsViewController.h"

@implementation UIControlsAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
