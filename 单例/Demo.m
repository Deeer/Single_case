//
//  Demo.m
//  单例
//
//  Created by Dee on 15/4/12.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "Demo.h"

@implementation Demo

//在ios中，所有的对象内存空间分配都会调用allocWithZone方法
//alloc 最终会调用allocWithZone方法
//如果要做单例需要重写此方法
//GCD提供的方法，专门创建单例
+(id)allocWithZone:(struct _NSZone *)zone
{
    
    static Demo *instance;
  //dispatch_once 是线程安全的
    static dispatch_once_t onceToken;
    //diapatch_once可以保证块代码中的指令只被执行一次
    dispatch_once(&onceToken, ^{
        //永远只会被执行一次
       //code to be executed once ,instancez只会被实例化一次
        instance =[super allocWithZone:zone];
        
        
    });
  
    
    return instance;
    
}
+(instancetype)sharedDemoObj
{
    return [[self alloc]init];
}
@end
