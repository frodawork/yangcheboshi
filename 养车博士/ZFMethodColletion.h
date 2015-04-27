//
//  ZFMethodColletion.h
//  养车博士
//
//  Created by froda on 15/4/23.
//  Copyright (c) 2015年 froda. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface ZFMethodColletion : NSObject
/**
 *  判断网络是否可用
 *
 *  @param view 需要把使用该方法的view对象作为参数传递进去
 *
 *  @return 网络是否可用，YES可用，NO不可用
 */
- (BOOL)isConnectionAvailable:(UIView *)view;
@end
