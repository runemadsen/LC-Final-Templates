//
//  customButton.h
//  finalphone
//
//  Created by Nikolas Psaroudakis on 4/23/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

//Extending a UIButton is not posibble if we want to use the standard IPhone buttons
//and not a custom one using images, since its private (or something)
@interface customButton : UIView {
	UIButton *button;
	NSString *shortcut;
	NSString *title;
	//BOOL userInteractionEnabled;
}
@property (retain, nonatomic) UIButton *button;
@property (retain, nonatomic) NSString *shortcut;
@property (retain,nonatomic) NSString *title;
//@property(nonatomic, getter=isUserInteractionEnabled) BOOL userInteractionEnabled;
-(void)assignTitle:(NSString *)ttl andShortcut:(NSString *)srtcut;
-(IBAction)buttonClick:(id)sender;

@end
