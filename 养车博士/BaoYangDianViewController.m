//
//  BaoYangDianViewController.m
//  养车博士
//
//  Created by froda on 15/4/22.
//  Copyright (c) 2015年 froda. All rights reserved.
//

#import "BaoYangDianViewController.h"
#import "ZFBaoYang.h"
#import "BaoYangAreaViewController.h"
#import "MJRefresh.h"
@interface BaoYangDianViewController ()

@end

@implementation BaoYangDianViewController

@synthesize baoyangSegment = _baoyangSegment;
@synthesize baoyangTabview = _baoyangTabview;

- (void)viewDidLoad {
    [super viewDidLoad];
    _baoyangTabview.delegate = self;
    _baoyangTabview.dataSource = self;
    [_baoyangTabview addLegendHeaderWithRefreshingTarget:self refreshingAction:@selector(loadNewData)];
    // 马上进入刷新状态
    [_baoyangTabview.header beginRefreshing];
}
- (void)loadNewData{
    NSLog(@"执行了刷新");
}
#pragma mark baoyangTabview datasource delegate method
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    /**
     *  一般cell的创建方法
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
     */
    
    
    
    //通过xib加载cell
    if (cell == nil) {
        NSBundle *bundle = [NSBundle mainBundle];
        NSArray *objs = [bundle loadNibNamed:@"BaoyangInformCell" owner:nil options:nil];
        cell = [objs lastObject];
    }
    return cell;
}
#pragma mark tabviewDelegate method
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 126;
}
#pragma mark segmentView clicked method
- (IBAction)segmentClicked:(UISegmentedControl *)sender {
    long segmentIndex = sender.selectedSegmentIndex;
    switch (segmentIndex) {
        case 0:{
            NSLog(@"点击了默认");
        }
            break;
        case 1:{
            NSLog(@"点击了人气");
        }
            break;
        case 2:{
            NSLog(@"点击了技术");
        }
            break;
        case 3:{
            NSLog(@"点击了地区");
            BaoYangAreaViewController *area = [[BaoYangAreaViewController alloc]init];
            [self.navigationController pushViewController:area animated:YES];
        }
        default:
            break;
    }
}



@end
