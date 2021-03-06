//
//  NSObject+Property.h
//  LFRuntimeTest
//
//  Created by 刘飞 on 17/6/12.
//  Copyright © 2017年 刘飞. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Property)
// @property分类：只会生成get，set方法声明，不会生成实现，也不会生成下划线成员属性
@property NSString *name;
@property NSString *height;
@end
