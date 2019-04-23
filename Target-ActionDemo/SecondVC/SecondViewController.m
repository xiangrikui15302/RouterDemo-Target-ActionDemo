//
//  SecondViewController.m
//  Target-ActionDemo
//
//  Created by 于朝盼 on 2019/4/23.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import "SecondViewController.h"
#import "CTMediator.h"
#import "CTMediator+ToViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 150, 40)];
    label.text = _paramsDic[@"second"];
    [self.view addSubview:label];
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 180, 150, 40)];
    [btn setTitle:@"跳转到第三个页面" forState:UIControlStateNormal];
    btn.backgroundColor  = [UIColor redColor];
    [btn addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

-(void)clickAction:(UIButton *)btn {
    UIViewController *vc = [[CTMediator sharedInstance] route_toVCWithVCName:@"ThirdViewController" params:@{@"third":@"这是第三个页面"}];
    [self presentViewController:vc animated:YES completion:nil];
}

@end
