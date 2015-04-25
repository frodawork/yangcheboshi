//
//  BaoYangAreaViewController.h
//  养车博士
//
//  Created by froda on 15/4/23.
//  Copyright (c) 2015年 froda. All rights reserved.
//
/**
 *  该控制器用于控制显示地图
 */
#import <UIKit/UIKit.h>
#import <MAMapKit/MAMapKit.h>
@interface BaoYangAreaViewController : UIViewController<MAMapViewDelegate>
@property (nonatomic,strong) MAMapView *mapView;
@end
