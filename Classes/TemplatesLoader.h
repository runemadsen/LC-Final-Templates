//
//  TemplatesLoader.h
//  Final-Templates
//
//  Created by Rune Madsen on 4/8/10.
//  Copyright 2010 New York University. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface TemplatesLoader : NSObject <NSCoding> 
{

	NSMutableArray * templates;
}

@property (nonatomic, retain) NSMutableArray * templates;

-(id)initAndLoad;

@end
