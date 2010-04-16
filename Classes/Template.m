//
//  Template.m
//  Final-Templates
//
//  Created by Rune Madsen on 4/7/10.
//  Copyright 2010 New York University. All rights reserved.
//

#import "Template.h"


@implementation Template
@synthesize name;

/* Init
 ______________________________________________________________ */

-(id)initWithName:(NSString*)n 
{
	self.name = n;
	
	return self;
}

/* Archiving
 ______________________________________________________________ */

- (id) initWithCoder:(NSCoder*)coder
{
	self = [super init];
	
	if(self != nil)
	{
		self.name = [coder decodeObjectForKey:@"name"];
	}
	
	return self;
}

- (void) encodeWithCoder:(NSCoder*)coder
{
	[coder encodeObject:self.name forKey:@"name"];
}

/* Dealloc
 ______________________________________________________________ */

- (void)dealloc 
{
    [name release];
    [super dealloc];
}

@end
