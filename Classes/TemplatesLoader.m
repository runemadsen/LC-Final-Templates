//
//  TemplatesLoader.m
//  Final-Templates
//
//  Created by Rune Madsen on 4/8/10.
//  Copyright 2010 New York University. All rights reserved.
//

#import "TemplatesLoader.h"
#import "Template.h"
#import "LCFileHelpers.h"
#import <sqlite3.h>

@implementation TemplatesLoader
@synthesize templates;

-(id)initAndLoad
{
	// test data
	Template * template1 = [[Template alloc] initWithName:@"Template 1"];
	Template * template2 = [[Template alloc] initWithName:@"Template 2"];
	Template * template3 = [[Template alloc] initWithName:@"Template 3"];
	
	self.templates = [[NSMutableArray alloc] initWithObjects:template1, template2, template3, nil];
	
	return self;
}

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


@end
