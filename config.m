//
//  setconfig.m
//  rctab
//
//  Created by Tejaswini Beerapu on 10/30/13.
//  Copyright (c) 2013 SKothap. All rights reserved.
//

#import "config.h"

@implementation config

@synthesize c1title;
@synthesize c1number;
@synthesize c1segment;

@synthesize c2title;
@synthesize c2number;
@synthesize c2segment;

@synthesize c3title;
@synthesize c3number;
@synthesize c3segment;

@synthesize c4title;
@synthesize c4number;
@synthesize c4segment;

+(config *)singleObj{
    
    static config * single=nil;
    
    @synchronized(self)
    {
        if(!single)
        {
            single = [[config alloc] init];
            
        }
        
    }
    return single;
}

@end
