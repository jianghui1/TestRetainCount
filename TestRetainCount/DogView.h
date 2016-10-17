//
//  DogView.h
//  TestRetainCount
//
//  Created by ys on 16/4/13.
//  Copyright © 2016年 jzh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DogView : UIView

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) int age;

@property (nonatomic, strong) UIView *redView;

@property (nonatomic, assign) UIView *yellowView;

@end
