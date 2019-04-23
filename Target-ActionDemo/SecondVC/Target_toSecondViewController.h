//
//  Target_toSecondViewController.h
//  Target-ActionDemo
//
//  Created by 于朝盼 on 2019/4/23.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
/*
 注：此处注意⚠️，创建的Target_toSecondViewController 命名方式必须是Target_xxx的样子，Target_这里不可以写错，首字母大写。下边的方法
 Action_NativeToSecondViewController也是一样，必须Action_xxx，Action_首字母必须大写。因为CTMediator是按照字符串来检索更改的，所以必须这么写。
 */
@interface Target_toSecondViewController : NSObject

- (UIViewController *)Action_NativeToSecondViewController:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
