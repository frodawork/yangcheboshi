//
//  ZFBaoYang.h
//  养车博士
//
//  Created by froda on 15/4/22.
//  Copyright (c) 2015年 froda. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 copy : NSString
 strong: 一般对象
 weak: UI控件
 assign:基本数据类型
 */

@interface ZFBaoYang : NSObject
/**
 *  车店名称
 */
@property (nonatomic,copy) NSString *storeName;
/**
 *  车店地址
 */
@property (nonatomic,copy) NSString *storeAdress;
/**
 *  车店星级
 */
@property (nonatomic,copy) NSString *storeStarRank;
/**
 *  车店技术等级
 */
@property (nonatomic,copy) NSString *storeTechRank;
/**
 *  商店距离范围
 */
@property (nonatomic,copy) NSString *storeArea;

- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)baoyangWithDict:(NSDictionary *)dict;

@end
