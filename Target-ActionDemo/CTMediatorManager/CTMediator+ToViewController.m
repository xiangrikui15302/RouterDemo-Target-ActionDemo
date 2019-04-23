//
//  CTMediator+ToViewController.m
//  Target-ActionDemo
//
//  Created by 于朝盼 on 2019/4/23.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import "CTMediator+ToViewController.h"



@implementation CTMediator (ToViewController)

- (UIViewController *)route_toVCWithVCName:(NSString *)VCname params:(NSDictionary *)dic {
    // 1. 字符串 是类名 Target_xxx.h 中的 xxx 部分
    NSString *target_toVC = [NSString stringWithFormat:@"to%@",VCname];
    //  2. 字符串是 Target_xxx.h 中 定义的 Action_xxxx 函数名的 xxx 部分
    NSString *action_NativeToVC = [NSString stringWithFormat:@"NativeTo%@",VCname];
    
    UIViewController *viewController = [self performTarget:target_toVC action:action_NativeToVC params:dic shouldCacheTarget:NO];
    
    if ([viewController isKindOfClass:[UIViewController class]])
    {
        // view controller 交付出去之后，可以由外界选择是push还是present
        return viewController;
    }
    else
    {
        // 这里处理异常场景，具体如何处理取决于产品
        NSLog(@"%@ 未能实例化页面", NSStringFromSelector(_cmd));
        return [[UIViewController alloc] init];
    }
}

@end
