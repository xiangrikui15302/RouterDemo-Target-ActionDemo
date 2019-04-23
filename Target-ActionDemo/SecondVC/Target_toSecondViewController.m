//
//  Target_toSecondViewController.m
//  Target-ActionDemo
//
//  Created by 于朝盼 on 2019/4/23.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import "Target_toSecondViewController.h"
#import "SecondViewController.h"

@implementation Target_toSecondViewController

- (UIViewController *)Action_NativeToSecondViewController:(NSDictionary *)params {
    SecondViewController *routeVC = [[SecondViewController alloc] init];
    routeVC.paramsDic = params;
    
    return routeVC;
}

@end
