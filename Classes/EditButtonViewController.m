//
//  EditButtonViewController.m
//  finalphone
//
//  Created by Nikolas Psaroudakis on 4/12/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "EditButtonViewController.h"


@implementation EditButtonViewController
@synthesize firstTextField;
@synthesize secondTextField;

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
	
		
        [theTextField resignFirstResponder];
		
	
    return YES;
	
}
- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}


- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[firstTextField release];
	[secondTextField release];
    [super dealloc];
}


@end
