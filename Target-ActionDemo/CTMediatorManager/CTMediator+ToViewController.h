//
//  CTMediator+ToViewController.h
//  Target-ActionDemo
//
//  Created by 于朝盼 on 2019/4/23.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import "CTMediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (ToViewController)

- (UIViewController *)route_toVCWithVCName:(NSString *)VCname params:(NSDictionary *)dic;

@end

NS_ASSUME_NONNULL_END
