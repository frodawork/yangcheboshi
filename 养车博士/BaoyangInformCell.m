//
//  BaoyangInformCell.m
//  养车博士
//
//  Created by froda on 15/4/25.
//  Copyright (c) 2015年 froda. All rights reserved.
//

#import "BaoyangInformCell.h"
#import "ZFBaoyang.h"

@interface BaoyangInformCell()
@property (weak, nonatomic) IBOutlet UILabel *storeName;
@property (weak, nonatomic) IBOutlet UILabel *storeAdress;
@property (weak, nonatomic) IBOutlet UILabel *storeStarRankNumber;
@property (weak, nonatomic) IBOutlet UIProgressView *storeTechRankPropress;
@property (weak, nonatomic) IBOutlet UILabel *storeTechRank;
@property (weak, nonatomic) IBOutlet UILabel *storeArea;
@end

@implementation BaoyangInformCell

- (void)awakeFromNib {
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

}
+ (instancetype)baoyangInformCellWithBaoyang:(ZFBaoyang *)baoyang{
    NSBundle *bundle = [NSBundle mainBundle];
    NSArray *objs = [bundle loadNibNamed:@"BaoyangInformCell" owner:nil options:nil];
    BaoyangInformCell *baoyangInformCell = [objs lastObject];
    baoyangInformCell.baoyang = baoyang;
    return baoyangInformCell;
}
+ (instancetype)baoyangInformCell{
    return [self baoyangInformCellWithBaoyang:nil];
}
- (void)setBaoyang:(ZFBaoyang *)baoyang{
    _baoyang = baoyang;
    self.storeName.text = baoyang.storeName;//设置店的全称
    self.storeAdress.text = baoyang.storeAdress;//设置店的详细地址
    self.storeStarRankNumber.text = baoyang.storeStarRank;//设置有多少条评论
    self.storeTechRank.text = baoyang.storeTechRank;//设置技术等级是高级还是初级
    self.storeArea.text = baoyang.storeArea;//设置距离店的距离范围
}
@end
