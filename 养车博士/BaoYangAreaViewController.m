//
//  BaoYangAreaViewController.m
//  养车博士
//
//  Created by froda on 15/4/23.
//  Copyright (c) 2015年 froda. All rights reserved.
//

#import "BaoYangAreaViewController.h"
#define AppKey @"cf61089331a5b64f26b010d1ee1eb6eb"
@interface BaoYangAreaViewController (){
    
}

@end

@implementation BaoYangAreaViewController
@synthesize mapView = _mapView;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
}
/**
 *  在这里初始化地图
 *
 *  @param animated 动画
 */
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:YES];
    [MAMapServices sharedServices].apiKey = AppKey;
    _mapView = [[MAMapView alloc] initWithFrame:CGRectMake(0, 60, CGRectGetWidth(self.view.bounds), CGRectGetHeight(self.view.bounds))];
    _mapView.delegate = self;
    _mapView.showsUserLocation = YES;
    _mapView.userTrackingMode = MAUserTrackingModeFollow;
    [_mapView  setZoomLevel:12.5 animated:YES];//设置缩放级别
    [self.view addSubview:_mapView];
    NSString *bundleIdentifier = [[NSBundle mainBundle] bundleIdentifier];
    NSLog(@"%@",bundleIdentifier);
}

#pragma mark 地图回调函数
- (void)mapView:(MAMapView *)mapView didUpdateUserLocation:(MAUserLocation *)userLocation updatingLocation:(BOOL)updatingLocation{
    if(updatingLocation)
    {
        //取出当前位置的坐标
        NSLog(@"latitude : %f,longitude: %f",userLocation.coordinate.latitude,userLocation.coordinate.longitude);
    }
}
@end
