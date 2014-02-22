//
//  setconfig.h
//  rctab
//
//  Created by Tejaswini Beerapu on 10/30/13.
//  Copyright (c) 2013 SKothap. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface config : NSObject

@property NSString *test;

@property NSString * c1title;
@property(nonatomic, strong) NSString * c1number;
@property int c1segment;


@property(nonatomic, strong) NSString * c2title;
@property(nonatomic, strong) NSString * c2number;
@property int c2segment;

@property(nonatomic, strong) NSString * c3title;
@property(nonatomic, strong) NSString * c3number;
@property int c3segment;

@property(nonatomic, strong) NSString * c4title;
@property(nonatomic, strong) NSString * c4number;
@property int c4segment;




+(config *)singleObj;

@end
