//
//  ViewController.m
//  TestRetainCount
//
//  Created by ys on 16/4/13.
//  Copyright © 2016年 jzh. All rights reserved.
//

#import "ViewController.h"

#import "DogView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*
    NSLog(@"vcCount = %ld", self.retainCount);
    NSLog(@"self.view = %ld", self.view.retainCount);
    
    DogView *dog = [[DogView alloc] init];
    NSLog(@"dog == %ld", dog.retainCount);
    
    dog.name = @"halou";
    NSLog(@"dog == %ld", dog.retainCount);
    dog.name = [NSString stringWithFormat:@"%@", @"odsjfoo"];
    NSLog(@"dog == %ld", dog.retainCount);
    
    dog.age = 10;
    NSLog(@"dog == %ld", dog.retainCount);
    
    [self.view addSubview:dog];
    NSLog(@"dog == %ld", dog.retainCount);
    NSLog(@"vcCount = %ld", self.retainCount);
    
    NSLog(@"self.view = %ld", self.view.retainCount);
    
    [dog retain];
    NSLog(@"%ld", [dog retainCount]);
    NSLog(@"%ld", [self retainCount]);
    NSLog(@"%ld", [self.view retainCount]);
    
    [self.view addSubview:dog];
    NSLog(@"%ld", [dog retainCount]);
    NSLog(@"%ld", [self retainCount]);
    NSLog(@"%ld", [self.view retainCount]);
     */
    
    /*
    DogView *dog = [[DogView alloc] init];
    NSLog(@"dog = %ld", dog.retainCount);
    
    dog.backgroundColor = [UIColor redColor];
    NSLog(@"dog = %ld", dog.retainCount);
    
    UIView *aView = [[UIView alloc] init];
    NSLog(@"aView = %ld", aView.retainCount);
    [dog addSubview:aView];
    NSLog(@"aView = %ld", aView.retainCount);
    NSLog(@"dog = %ld", dog.retainCount);
    
    [self.view addSubview:dog];
    NSLog(@"dog = %ld", dog.retainCount);
    
    [dog addSubview:aView];
    NSLog(@"aView = %ld", aView.retainCount);
    NSLog(@"dog = %ld", dog.retainCount);
    
    UIView *bView = [[UIView alloc] init];
    NSLog(@"bView = %ld", bView.retainCount);
    [dog addSubview:bView];
    NSLog(@"bView = %ld", bView.retainCount);
    NSLog(@"dog = %ld", dog.retainCount);
     */
    
    DogView *view = [[DogView alloc] init];
    NSLog(@"view = %ld", view.retainCount);
    NSLog(@"redView = %ld", view.redView.retainCount);
    
    UIView *redView = [[UIView alloc] init];
    NSLog(@"%ld", redView.retainCount);
    view.redView = redView;
    NSLog(@"%ld", redView.retainCount);
    NSLog(@"redView = %ld", view.redView.retainCount);
    
    [view.redView addSubview:[[UIView alloc] init]];
    NSLog(@"%ld", redView.retainCount);
    NSLog(@"redView = %ld", view.redView.retainCount);
    
    UIView *redView1 = [[UIView alloc] init];
    NSLog(@"%ld", redView1.retainCount);
    view.redView = redView1;
    NSLog(@"%ld", redView1.retainCount);
    NSLog(@"redView = %ld", view.redView.retainCount);
    
    
    
    
    DogView *view1 = [[DogView alloc] init];
    NSLog(@"view = %ld", view1.retainCount);
    NSLog(@"redView = %ld", view1.redView.retainCount);
    
    UIView *yellow = [[UIView alloc] init];
    NSLog(@"%ld", yellow.retainCount);
    view.yellowView = yellow;
    NSLog(@"%ld", yellow.retainCount);
    NSLog(@"yellow = %ld", view.yellowView.retainCount);
    
    [view.yellowView addSubview:[[UIView alloc] init]];
    NSLog(@"%ld", yellow.retainCount);
    NSLog(@"yellow = %ld", view.yellowView.retainCount);
    
    UIView *yellow1 = [[UIView alloc] init];
    NSLog(@"%ld", yellow1.retainCount);
    view.redView = yellow1;
    NSLog(@"%ld", yellow1.retainCount);
    NSLog(@"yellow = %ld", view.yellowView.retainCount);
    
}

@end
