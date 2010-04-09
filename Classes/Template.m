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

-(id)initWithName:(NSString*)n 
{
	self.name = n;
	return self;
}

@end
