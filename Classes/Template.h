//
//  Template.h
//  Final-Templates
//
//  Created by Rune Madsen on 4/7/10.
//  Copyright 2010 New York University. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Template : NSObject <NSCoding> 
{	
	NSString * name;
}

@property(nonatomic,copy) NSString * name;

-(id)initWithName:(NSString*)n;

@end
