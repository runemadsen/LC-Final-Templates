//
//  EditButtonViewController.h
//  finalphone
//
//  Created by Nikolas Psaroudakis on 4/12/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface EditButtonViewController : UIViewController <UITextFieldDelegate> {
	UITextField *firstTextField;
	UITextField *secondTextField;
	
}
@property (nonatomic, retain) IBOutlet UITextField *firstTextField;
@property (nonatomic, retain) IBOutlet UITextField *secondTextField;
@end
