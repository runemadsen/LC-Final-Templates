#import "EditButtonViewController.h"


@implementation EditButtonViewController
@synthesize firstTextField;
@synthesize shortcutField;

- (void) viewDidLoad
{
	NSLog(@"View did load");
	
	firstTextField = [[UITextField alloc] initWithFrame:CGRectMake(12, 5, 260, 35)];
	[firstTextField setBackgroundColor:[UIColor whiteColor]];
	firstTextField.placeholder = @"Button Name";
	firstTextField.borderStyle = UITextBorderStyleRoundedRect;
	[self.view addSubview:firstTextField];
	
	/*secondTextField = [[UITextField alloc] initWithFrame:CGRectMake(12, 60, 260, 35)];
	[secondTextField setBackgroundColor:[UIColor whiteColor]];
	secondTextField.placeholder = @"Short cut";
	secondTextField.borderStyle = UITextBorderStyleRoundedRect;
	[self.view addSubview:secondTextField];*/
	
	CGRect frame = TTNavigationFrame();
	frame.origin.y += 45;
	frame.size.height -= 45;
	
	UIScrollView * scrollView = [[[UIScrollView alloc] initWithFrame:frame] autorelease];
    scrollView.backgroundColor = TTSTYLEVAR(backgroundColor);
    scrollView.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    scrollView.canCancelContentTouches = NO;
    scrollView.showsVerticalScrollIndicator = NO;
    scrollView.showsHorizontalScrollIndicator = NO;
    [self.view addSubview:scrollView];
    
    shortcutField = [[[TTPickerTextField alloc] init] autorelease];
    shortcutField.dataSource = [[[PickerDataSource alloc] init] autorelease];;
    shortcutField.autocorrectionType = UITextAutocorrectionTypeNo;
    shortcutField.autocapitalizationType = UITextAutocapitalizationTypeNone;
    shortcutField.rightViewMode = UITextFieldViewModeAlways;
    shortcutField.delegate = self;
    shortcutField.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    [shortcutField sizeToFit];
    
    UILabel * label = [[[UILabel alloc] init] autorelease];
    label.text = @"Shortcut:";
    label.font = TTSTYLEVAR(messageFont);
    label.textColor = TTSTYLEVAR(messageFieldTextColor);
    [label sizeToFit];
    label.frame = CGRectInset(label.frame, -2, 0);
    shortcutField.leftView = label;
    shortcutField.leftViewMode = UITextFieldViewModeAlways;
    [shortcutField becomeFirstResponder];
    
    [scrollView addSubview:shortcutField];
    
    CGFloat y = 0;
    
    for (UIView *view in scrollView.subviews) 
	{
        view.frame = CGRectMake(0, y, self.view.width, view.height);
        y += view.height;
    }
    
    scrollView.contentSize = CGSizeMake(scrollView.width, y);
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField 
{
	[theTextField resignFirstResponder];
		
    return YES;
}

- (void)didReceiveMemoryWarning 
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}


- (void)viewDidUnload 
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[firstTextField release];
	[shortcutField release];
    [super dealloc];
}


@end
