#import <Foundation/Foundation.h>


@interface CustomButton : NSObject <NSCoding>  
{
	NSString * name;
	NSString * shortcut;
	NSMutableArray * shortcuts;
}

@property(nonatomic,copy) NSString * name;
@property(nonatomic,copy) NSString * shortcut;
@property(nonatomic,retain) NSMutableArray * shortcuts;

@end
