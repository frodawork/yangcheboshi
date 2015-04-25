//
//  ViewController.m
//  养车博士
//
//  Created by froda on 15/4/22.
//  Copyright (c) 2015年 froda. All rights reserved.
//

#import "ViewController.h"
#import "ZFMethodColletion.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ZFMethodColletion *zfmethod = [[ZFMethodColletion alloc]init];
    [zfmethod isConnectionAvailable:self.view];
    
}


@end
