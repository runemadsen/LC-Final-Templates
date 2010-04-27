#import <UIKit/UIKit.h>
@class ListButtonViewController;
@class EditButtonViewController;
@class customButton;


@interface TemplateViewController : UIViewController
{
	ListButtonViewController * listView;
	EditButtonViewController * editView;
	UIToolbar * toolbar;
	BOOL enable;
}

@property (retain, nonatomic) ListButtonViewController *listView;
@property (retain, nonatomic) EditButtonViewController *editView;
@property (nonatomic, retain) UIToolbar *toolbar;

-(void)switchViews;
-(IBAction)newButton:(id)sender;
-(IBAction)editButton:(id)sender;
-(IBAction)trushButton:(id)sender;
-(IBAction)cancelButton:(id)sender;
-(IBAction)doneButton:(id)sender;
-(void)displayListToolbar;
-(void)displayEditToolbar;

@end







