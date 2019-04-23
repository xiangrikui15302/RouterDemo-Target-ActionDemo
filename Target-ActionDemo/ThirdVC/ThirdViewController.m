//
//  ThirdViewController.m
//  Target-ActionDemo
//
//  Created by 于朝盼 on 2019/4/23.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 150, 40)];
    label.text = _paramsDic[@"third"];
    [self.view addSubview:label];
}


@end
