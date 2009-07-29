//
//  UIControlsAppDelegate.h
//  UIControls
//
//  Created by Scott Taylor on 7/29/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UIControlsViewController;

@interface UIControlsAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    UIControlsViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UIControlsViewController *viewController;

@end

