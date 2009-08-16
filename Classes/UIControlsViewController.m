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


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


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
