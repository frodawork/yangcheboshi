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
@property (weak, nonatomic) IBOutlet UILabel *storeStarRank;
@property (weak, nonatomic) IBOutlet UIProgressView *storeTechRankPropress;
@property (weak, nonatomic) IBOutlet UILabel *storeTechRank;
@property (weak, nonatomic) IBOutlet UILabel *storeArea;
@end

@implementation BaoyangInformCell

- (void)awakeFromNib {
    // Initialization code
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
    self.storeName.text = baoyang.storeName;
    self.storeAdress.text = baoyang.storeAdress;
    self.storeStarRank.text = baoyang.storeStarRank;
    self.storeTechRank.text = baoyang.storeTechRank;
    self.storeArea.text = baoyang.storeArea;
}
@end
