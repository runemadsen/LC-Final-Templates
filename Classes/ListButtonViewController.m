//
//  ListButtonViewController.m
//  finalphone
//
//  Created by Nikolas Psaroudakis on 4/12/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "ListButtonViewController.h"
#import "customButton.h"

@implementation ListButtonViewController
@synthesize buttons;
-(void)viewDidLoad{
	
	if (self.buttons==nil) {
		NSMutableArray *btnArray = [[NSMutableArray alloc] init];
		[self setButtons:btnArray];
		[btnArray release];
	}
	//Add buttons to view
	for (int i=0; i<[buttons count]; i++) {
		
		customButton *myButton = [buttons objectAtIndex:(NSUInteger) i];
		[self.view insertSubview:myButton atIndex:0];
		/*
		 UIButton *button = [[buttons objectAtIndex:(NSUInteger) i] getButton] ;
		 [button addTarget:self.listButtonViewController 
		 action:@selector(trialMethod:)
		 forControlEvents:UIControlEventTouchDown];
		 button.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);
		 [button setUserInteractionEnabled:YES]; 
		 [listController.view addSubview:button];
		 */
		//UIView *button = [buttons objectAtIndex:(NSUInteger) i];
		//button.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2);
		//[self.view addSubview:button];
	}
}

-(void)trialMethod:(id)sender {
	
	NSLog(@"Button was Pressed");
	
	
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
    [super dealloc];
}


@end
