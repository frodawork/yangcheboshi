//
//  BaoyangInformCell.h
//  养车博士
//
//  Created by froda on 15/4/25.
//  Copyright (c) 2015年 froda. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ZFBaoyang;
@interface BaoyangInformCell : UITableViewCell
/**
 *  模型数据
 */
@property (nonatomic, strong) ZFBaoyang *baoyang;

+ (instancetype) baoyangInformCell;

/**
 *  通过模型数据来创建一个baoyangCell
 */
+ (instancetype)baoyangInformCellWithBaoyang:(ZFBaoyang *)baoyang;

@end
