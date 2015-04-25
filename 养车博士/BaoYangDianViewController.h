//
//  BaoYangDianViewController.h
//  养车博士
//
//  Created by froda on 15/4/22.
//  Copyright (c) 2015年 froda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaoYangDianViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
/**
 *  保养页面的分栏
 */
@property (weak, nonatomic) IBOutlet UISegmentedControl *baoyangSegment;
/**
 *  保养页面的
 */
@property (weak, nonatomic) IBOutlet UITableView *baoyangTabview;
/**
 *  保养页面分栏点击事件方法
 *
 *  @param sender 分栏的不同段
 */
- (IBAction)segmentClicked:(UISegmentedControl *)sender;
@end
