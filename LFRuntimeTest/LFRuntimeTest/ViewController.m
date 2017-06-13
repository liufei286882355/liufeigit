//
//  ViewController.m
//  LFRuntimeTest
//
//  Created by 刘飞 on 17/6/12.
//  Copyright © 2017年 刘飞. All rights reserved.
//

#import "ViewController.h"
#import <objc/message.h>
#import "UIImage+image.h"
#import "NSObject+Property.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //runtime 交换方法
    //当调用imageNamed的方法时候，因为我已经交换了imagenamed和ln_imageNamed方法，所以，所以这里实际调用的方法是我们新增加的UIIamge＋image分类中的ln_imageNamed
    UIImage *image = [UIImage imageNamed:@"nih"];
    
    
    
    //runtime 给分类动态添加属性
    //这里是以NSObject为例子
    NSObject *object = [[NSObject alloc]init];
    object.name = @"123";
    NSLog(@"rutime动态添加属性name==%@", object.name);
    
    
    
    
}



@end
