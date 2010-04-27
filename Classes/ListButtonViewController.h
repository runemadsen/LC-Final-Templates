//
//  ListButtonViewController.h
//  finalphone
//
//  Created by Nikolas Psaroudakis on 4/12/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class customButton;

@interface ListButtonViewController : UIViewController <UITextFieldDelegate> 
{

}

-(void)trialMethod:(id)sender;
-(void)refreshButtons:(NSMutableArray *)buttons;

@end
