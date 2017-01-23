//
//  ViewController.m
//  20170123 MyScrollView
//
//  Created by Minhung Ling on 2017-01-23.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.firstView = [[MyScrollView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.firstView];
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 150)];
    greenView.backgroundColor = [UIColor greenColor];
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueView.backgroundColor = [UIColor blueColor];
    UIView *yellowView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    yellowView.backgroundColor = [UIColor yellowColor];
    [self.firstView addSubview:redView];
    [self.firstView addSubview:greenView];
    [self.firstView addSubview:blueView];
    [self.firstView addSubview:yellowView];
    CGFloat width = self.firstView.bounds.size.width;
    CGFloat height = self.firstView.bounds.size.height;
    self.firstView.mySize = CGSizeMake(width, height + 200);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
