#import "CustomButtonView.h"

@implementation CustomButtonView
@synthesize button;
@synthesize model;

- (id)initWithFrame:(CGRect)frame model:(CustomButton *)newModel
{
    if (self = [super initWithFrame:frame]) 
	{
		self.model = newModel;
		self.frame = frame;
		self.bounds = frame;
        UIButton * btn = [[UIButton buttonWithType:UIButtonTypeRoundedRect] retain];
		btn.frame = frame;
        
		[btn setTitle:self.model.name forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
		[btn setEnabled:YES];
		[self setButton:btn];
        [self addSubview:button];
    }
	
    return self;
}

/* Events
 ______________________________________________________________ */

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	
}

- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
	
	UITouch * touch = [touches anyObject];
	CGPoint location = [touch locationInView:self.superview];
	self.center = location;
}

-(IBAction)buttonClick:(id)sender
{
	// loop through shortcuts
	//NSString * txt = self.model.shortcuts;
	
	//NSLog(@"%@",txt);	
}

@end
