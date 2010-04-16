//
//  TemplatesLoader.m
//  Final-Templates
//
//  Created by Rune Madsen on 4/8/10.
//  Copyright 2010 New York University. All rights reserved.
//

#import "TemplatesLoader.h"

@implementation TemplatesLoader
@synthesize templates;

/* Init
 ______________________________________________________________ */

-(id)initAndLoad
{
	// test data
	Template * template1 = [[Template alloc] initWithName:@"Template 1"];
	Template * template2 = [[Template alloc] initWithName:@"Template 2"];
	Template * template3 = [[Template alloc] initWithName:@"Template 3"];
	
	self.templates = [[NSMutableArray alloc] initWithObjects:template1, template2, template3, nil];
	
	[template1 release];
	[template2 release];
	[template3 release];
	
	return self;
}

/* Utilities
 ______________________________________________________________ */

-(void)reorderFrom:(NSInteger)oldIndex to:(NSInteger)newIndex
{
	Template * template = [[self.templates objectAtIndex:oldIndex] retain];
	
	[self.templates removeObjectAtIndex:oldIndex];
	[self.templates insertObject:template atIndex:newIndex];
}

-(void)addRow:(Template *)newTemplate
{
	[self.templates addObject:newTemplate];
}

/* Archiving
 ______________________________________________________________ */

- (id) initWithCoder:(NSCoder*)coder
{
	self = [super init];
	
	if(self != nil)
	{
		self.templates = [coder decodeObjectForKey:@"templates"];
	}
	
	return self;
}

- (void) encodeWithCoder:(NSCoder*)coder
{
	[coder encodeObject:self.templates forKey:@"templates"];
}

/* Dealloc
 ______________________________________________________________ */

- (void)dealloc 
{
    [templates release];
    [super dealloc];
}

@end
