//
//  xViewController.m
//  单例
//
//  Created by Dee on 15/4/12.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "xViewController.h"
#import "Demo.h"

@interface xViewController ()

@end

@implementation xViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
//    Demo *obj =[[Demo alloc]init];
//    NSLog(@"%@",obj);
    
    for (int i=0 ; i<10; i++) {
    
        Demo *obj1 =[Demo sharedDemoObj];
        NSLog(@"%@",obj1);
        
    }
    
    
    
    
}


@end
