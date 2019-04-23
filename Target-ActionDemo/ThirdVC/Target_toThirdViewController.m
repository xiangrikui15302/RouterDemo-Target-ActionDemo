//
//  Target_toThirdViewController.m
//  Target-ActionDemo
//
//  Created by 于朝盼 on 2019/4/23.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import "Target_toThirdViewController.h"
#import "ThirdViewController.h"

@implementation Target_toThirdViewController

- (UIViewController *)Action_NativeToThirdViewController:(NSDictionary *)params {
    ThirdViewController *routeVC = [[ThirdViewController alloc] init];
    routeVC.paramsDic = params;
    
    return routeVC;
}

@end
