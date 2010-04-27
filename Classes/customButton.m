//
//  customButton.m
//  finalphone
//
//  Created by Nikolas Psaroudakis on 4/23/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "customButton.h"
@implementation customButton
@synthesize button;
@synthesize shortcut;
@synthesize title;
//@synthesize userInteractionEnabled;


/*
-(void)drawRect:(CGRect)frame{
	
	
	NSLog(@"Draw Rect Called");	
	
}
 */

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
		//[self setUserInteractionEnabled:YES];
		self.frame=frame;
		self.bounds=frame;
        UIButton *btn = [[UIButton buttonWithType:UIButtonTypeRoundedRect] retain];
		btn.frame = frame;
        [btn setTitle:[self.button currentTitle] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        //btn.center = self.center;
		[btn setEnabled:YES];
		[self setButton:btn];
        [self addSubview:button];
		
    }
    return self;
}
-(void)assignTitle:(NSString *)ttl andShortcut:(NSString *)srtcut {
	
		
	[self setTitle:ttl];
	[self setShortcut:srtcut];
	[self.button setTitle:self.title forState:UIControlStateNormal];

	
}
- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	NSLog(@"Touched.");
}
- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
	NSLog(@"Dragged.");
	UITouch *touch = [touches anyObject];
	CGPoint location = [touch locationInView:self.superview];
	self.center = location;
}
-(IBAction)buttonClick:(id)sender{
	NSString *txt =self.shortcut;
	NSLog(@"%@",txt);	
}

@end
