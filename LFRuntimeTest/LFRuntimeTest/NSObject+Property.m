//
//  NSObject+Property.m
//  LFRuntimeTest
//
//  Created by 刘飞 on 17/6/12.
//  Copyright © 2017年 刘飞. All rights reserved.
//

#import "NSObject+Property.h"
#import <objc/message.h>


@implementation NSObject (Property)

-(void)setName:(NSString *)name {
    //objc_setAssociatedObject(将某个值跟某对象关联起来，将某个值存储到某个对象中)
    //object：给那个对象添加属性
    //key：属性名称
    //value：属性值
    //policy：保存策略
    objc_setAssociatedObject(self, @"name", name, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(NSString *)name {
    return objc_getAssociatedObject(self, @"name");
}

@end
