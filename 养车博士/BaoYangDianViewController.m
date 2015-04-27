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
#import "BaoyangInformCell.h"
@interface BaoYangDianViewController ()

@end

@implementation BaoYangDianViewController

@synthesize baoyangSegment = _baoyangSegment;
@synthesize baoyangTabview = _baoyangTabview;

#pragma mark - life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    _baoyangTabview.delegate = self;
    _baoyangTabview.dataSource = self;
    [_baoyangTabview addLegendHeaderWithRefreshingTarget:self refreshingAction:@selector(loadNewData)];
    // 马上进入刷新状态
    [_baoyangTabview.header beginRefreshing];
}
- (void)viewWillAppear:(BOOL)animated{
    /**
     *记录一下大神分享的一些观点：
     *1.改变UI元素不是很可靠；
     *2.Autolayout发生在viewWillAppear之后，这里通常不做视图位置的修改，而用来更新Form数据；
     *3.在viewDidAppear里面做Notification的监听之类的事情；
     *4.属性的初始化，则交给getter去做。
     *5.所有的属性都使用getter和setter
     */
}
- (void)viewDidAppear:(BOOL)animated{
    
}
- (void)viewWillLayoutSubviews{
    //大神说这里适合做UI元素的位置改变
}
- (void)viewDidLayoutSubviews{
    //大神说这里适合做UI元素的位置改变，在viewDidLayoutSubview确定UI位置关系之后设置autoLayout比较稳妥
}


#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *ID = @"cell";
    BaoyangInformCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    
    
    //--------------------------------------
    //一般cell的创建方法
//    if (cell == nil) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
//    }
    //--------------------------------------
    
    
    
    //-------------------------------------
    //通过xib加载cell
//    if (cell == nil) {
//        NSBundle *bundle = [NSBundle mainBundle];
//        NSArray *objs = [bundle loadNibNamed:@"BaoyangInformCell" owner:nil options:nil];
//        cell = [objs lastObject];
//    }
    //------------------------------------
    
    
    
    
    //-----------------------------------
    //制造假数据
    NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:@"长春市大众4S旗舰店",@"storeName",@"雁南大街3000号",@"storeAdress",@"10条评论",@"storeStarRank",@"高级",@"storeTechRank",@"0.5公里以内",@"StoreArea", nil];
    //-----------------------------------
    //通过模型加载cell
    ZFBaoyang *baoyangData = [ZFBaoyang baoyangWithDict:dict];
    cell = [BaoyangInformCell baoyangInformCellWithBaoyang:baoyangData];
    //------------------------------------
    
    
    return cell;
}

#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 126;
}


#pragma mark - event response
/**
 *  数据上拉刷新相应方法
 */
- (void)loadNewData{
    NSLog(@"执行了刷新");
}
/**
 *  segmentView event method
 */
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


#pragma mark - setters and getters


@end
