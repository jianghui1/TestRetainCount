//
//  DogView.m
//  TestRetainCount
//
//  Created by ys on 16/4/13.
//  Copyright © 2016年 jzh. All rights reserved.
//

#import "DogView.h"

@interface DogView ()

@end

@implementation DogView


- (void)dealloc
{
    NSLog(@"我要挂掉了");
    [super dealloc];
}

@end
