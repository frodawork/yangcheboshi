//
//  ZFMethodColletion.m
//  养车博士
//
//  Created by froda on 15/4/23.
//  Copyright (c) 2015年 froda. All rights reserved.
//

#import "ZFMethodColletion.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
@implementation ZFMethodColletion
/**
 *  判断网络是否可用
 *
 *  @return 网络的链接状态，可用与不可用。
 */
-(BOOL) isConnectionAvailable:(UIView *)view{
    BOOL isExistenceNetwork = YES;
    Reachability *reach = [Reachability reachabilityWithHostName:@"www.baidu.com"];
    switch ([reach currentReachabilityStatus]) {
        case NotReachable:
            isExistenceNetwork = NO;
            NSLog(@"notReachable");
            break;
        case ReachableViaWiFi:
            isExistenceNetwork = YES;
            NSLog(@"WIFI");
            break;
        case ReachableViaWWAN:
            isExistenceNetwork = YES;
            NSLog(@"3G");
            break;
    }
    if (!isExistenceNetwork) {
        MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
        hud.removeFromSuperViewOnHide =YES;
        hud.mode = MBProgressHUDModeText;
        hud.labelText = NSLocalizedString(@"当前网络不可用！", nil);
        hud.minSize = CGSizeMake(132.f, 108.0f);
        [hud hide:YES afterDelay:3];
        return NO;
    }
    
    return isExistenceNetwork;
}

@end
