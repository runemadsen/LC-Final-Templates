#import "CustomButton.h"


@implementation CustomButton

@synthesize name;
@synthesize shortcut;
@synthesize shortcuts;

/* Archiving
 ______________________________________________________________ */

- (id) initWithCoder:(NSCoder*)coder
{
	self = [super init];
	
	if(self != nil)
	{
		self.name = [coder decodeObjectForKey:@"name"];
		self.shortcut = [coder decodeObjectForKey:@"shortcut"];
		self.shortcuts = [coder decodeObjectForKey:@"shortcuts"];
	}
	
	return self;
}

- (void) encodeWithCoder:(NSCoder*)coder
{
	[coder encodeObject:self.name forKey:@"name"];
	[coder encodeObject:self.shortcut forKey:@"shortcut"];
	[coder encodeObject:self.shortcuts forKey:@"shortcuts"];
}

/* Dealloc
 ______________________________________________________________ */

- (void)dealloc 
{
    [name release];
	[shortcut release];
	[shortcuts release];
    [super dealloc];
}

@end






