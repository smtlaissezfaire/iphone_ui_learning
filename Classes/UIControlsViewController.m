//
//  UIControlsViewController.m
//  UIControls
//
//  Created by Scott Taylor on 7/29/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "UIControlsViewController.h"

@implementation UIControlsViewController

@synthesize nameField;
@synthesize numberField;
@synthesize sliderLabel;
@synthesize leftSwitch;
@synthesize rightSwitch;
@synthesize switchView;
@synthesize doSomethingButton;

- (IBAction) textFieldDoneEditing: (id) sender {
  [sender resignFirstResponder];
}

- (IBAction) backgroundClick: (id) sender {
  [nameField   resignFirstResponder];
  [numberField resignFirstResponder];
}

- (IBAction) sliderChanged: (id) sender {
  UISlider *slider = (UISlider *) sender;
  int progress = (int) (slider.value + 0.5f);
  NSString *newText = [[NSString alloc] initWithFormat:@"%d", progress];
  
  sliderLabel.text = newText;
  [newText release];
}

- (IBAction) switchChanged: (id) sender {
  UISwitch *whichSwitch = (UISwitch *) sender;
  BOOL setting = [whichSwitch isOn];
  
  [leftSwitch  setOn: setting animated: YES];
  [rightSwitch setOn: setting animated: YES];
}

- (IBAction) toggleShowHide: (id) sender {
  UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
  NSInteger segment = segmentedControl.selectedSegmentIndex;
  
  if (segment == kShowSegementIndex) {
    [switchView setHidden: NO];
  } else {
    [switchView setHidden: YES];
  }
}

- (IBAction) doSomething: (id) sender {
  UIActionSheet *actionSheet = [[UIActionSheet alloc]
                               initWithTitle:          @"Are you sure?"
                               delegate:               self
                               cancelButtonTitle:      @"No Way!"
                               destructiveButtonTitle: @"Yes, I'm sure!"
                               otherButtonTitles:      nil];
  
  [actionSheet showInView: self.view];
  [actionSheet release];
}

- (void) actionSheet: (UIActionSheet *) actionSheet
         didDismissWithButtonIndex: (NSInteger) buttonIndex {
  if (!(buttonIndex == [actionSheet cancelButtonIndex])) {
    NSString *msg = nil;
    
    if (nameField.text.length > 0) {
      msg = [[NSString alloc]
             initWithFormat: @"You can breath easy, %@, everything went OK.",
             nameField.text];
    } else {
      msg = @"You can breath easy, everything went OK.";
    }
    
    UIAlertView *alert = [[UIAlertView alloc]
                           initWithTitle:     @"Something was done"
                           message:           msg
                           delegate:          self
                           cancelButtonTitle: @"Phew!"
                           otherButtonTitles: nil];
    
    [alert show];
    [alert release];
    [msg release];
  }
}


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


- (void) viewDidLoad {
  UIImage *buttonImageNormal = [UIImage imageNamed: @"whiteButton.png"];
  UIImage *stretchableButtonImageNormal =  [buttonImageNormal stretchableImageWithLeftCapWidth: 12 topCapHeight: 0];
  [doSomethingButton setBackgroundImage: stretchableButtonImageNormal
                     forState: UIControlStateNormal];
  
  UIImage *buttonImagePressed = [UIImage imageNamed: @"blueButton.png"];
  UIImage *stretchableButtonImagePressed = [buttonImagePressed stretchableImageWithLeftCapWidth:12 topCapHeight: 0];
  [doSomethingButton setBackgroundImage: stretchableButtonImagePressed
                     forState: UIControlStateHighlighted];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc {
    [super dealloc];
}

@end
