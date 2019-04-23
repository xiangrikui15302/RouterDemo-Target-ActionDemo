//
//  ViewController.m
//  Target-ActionDemo
//
//  Created by 于朝盼 on 2019/4/23.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import "ViewController.h"
#import "CTMediator.h"
#import "CTMediator+ToViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 200, 40)];
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"跳转到第二个页面" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)clickAction:(UIButton *)btn {
    UIViewController *vc = [[CTMediator sharedInstance] route_toVCWithVCName:@"SecondViewController" params:@{@"second":@"这是第二个页面"}];
    
    [self presentViewController:vc animated:YES completion:nil];
}


@end
