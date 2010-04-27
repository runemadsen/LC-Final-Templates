#import "ListButtonViewController.h"
#import "customButton.h"
#import "TemplateViewController.h"

@implementation ListButtonViewController

-(void)viewDidLoad
{	
	
}

-(void)refreshButtons:(NSMutableArray *)buttons
{	
	// does CGRect work here?
	NSLog(@"Inside: %d", [buttons count]);
	
	for(int i = 0; i < [buttons count]; i++) 
	{
		CGRect rect = CGRectMake(20, 20, 60, 20);
		CustomButtonView * btn = [[CustomButtonView alloc] initWithFrame:rect model:[buttons objectAtIndex:(NSUInteger) i]];
		[self.view insertSubview:btn atIndex:0];
	}
}

-(void)trialMethod:(id)sender 
{	
	NSLog(@"Button was Pressed");
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
    [super dealloc];
}


@end
