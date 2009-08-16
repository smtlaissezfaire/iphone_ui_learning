//
//  UIControlsViewController.h
//  UIControls
//
//  Created by Scott Taylor on 7/29/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIControlsViewController : UIViewController {
  IBOutlet UITextField *nameField;
  IBOutlet UITextField *numberField;
  IBOutlet UILabel     *sliderLabel;
}

@property (nonatomic, retain) UITextField *nameField;
@property (nonatomic, retain) UITextField *numberField;
@property (nonatomic, retain) UILabel     *sliderLabel;

-(IBAction) textFieldDoneEditing: (id) sender;
-(IBAction) backgroundClick:      (id) sender;
-(IBAction) sliderChanged:        (id) sender;
@end

