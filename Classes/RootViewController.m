//
//  RootViewController.m
//  Final-Templates
//
//  Created by Rune Madsen on 4/7/10.
//  Copyright New York University 2010. All rights reserved.
//

#import "RootViewController.h"

@implementation RootViewController
@synthesize templateView;
@synthesize addTemplateView;
@synthesize loader;

- (void)viewDidLoad 
{
    [super viewDidLoad];
	
	NSNotificationCenter *dc = [NSNotificationCenter defaultCenter];
	[dc addObserver:self selector:@selector(saveNewTemplate:) name:@"SaveNewTemplate" object:NULL];
	
	loader = [[TemplatesLoader alloc] initAndLoad];

	self.navigationItem.leftBarButtonItem = self.editButtonItem;
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addItem:)];
	
	self.title = @"Templates";
}

- (void)addItem:sender 
{
    
	if (addTemplateView == nil) 
	{
        addTemplateView = [[AddTemplateViewController alloc] init];
    }
	
    UINavigationController * navigationController = [[UINavigationController alloc] initWithRootViewController:addTemplateView];
    [[self navigationController] presentModalViewController:navigationController animated:YES];
    [navigationController release];
}

- (void) saveNewTemplate:(id)sender
{
	NSLog(@"I hear you ");
}

/*
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}
*/
/*
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
*/
/*
- (void)viewWillDisappear:(BOOL)animated {
	[super viewWillDisappear:animated];
}
*/
/*
- (void)viewDidDisappear:(BOOL)animated {
	[super viewDidDisappear:animated];
}
*/

/*
 // Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// Return YES for supported orientations.
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
 */

- (void)didReceiveMemoryWarning 
{
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload 
{
	// Release anything that can be recreated in viewDidLoad or on demand.
	// e.g. self.myOutlet = nil;
}


#pragma mark Table view methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView 
{
    return 1;
}


// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section 
{	
	return loader.templates.count;
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
	// Configure the cell.
	//Final_TemplatesAppDelegate * appDelegate = (Final_TemplatesAppDelegate *) [[UIApplication sharedApplication] delegate];
	Template * t = (Template *) [loader.templates objectAtIndex:indexPath.row];
	
	[cell.textLabel setText:t.name];

    return cell;
}


// Override to support row selection in the table view.
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath 
{
	Template * t = (Template *) [loader.templates objectAtIndex:indexPath.row];
	
	if(self.templateView == nil)
	{
		TemplateViewController * viewController = [[TemplateViewController alloc] initWithNibName:@"TemplateViewController" bundle:[NSBundle mainBundle]];
		self.templateView = viewController;
		[viewController release];
	}
	
	[self.navigationController pushViewController:self.templateView animated:YES];
	self.templateView.title = [t name];
	self.templateView.templateName.text = [t name];
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}*/

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath 
{    
    if (editingStyle == UITableViewCellEditingStyleDelete) 
	{
        // Delete the row from the data source.
        [loader.templates removeObjectAtIndex:indexPath.row];
		[tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) 
	{
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }   
	
	
}

// Override to support rearranging the table view.
/*
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath 
{
	
}*/



/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}*/



- (void)dealloc 
{
    [super dealloc];
	[loader release];
}


@end

