//
//  NotiTableViewCell.m
//  UIDemo
//
//  Created by Admin on 2018/3/6.
//  Copyright © 2018年 DB. All rights reserved.
//

#import "NotiTableViewCell.h"

@interface NotiTableViewCell ()



@property (weak, nonatomic) IBOutlet UIImageView *centerImageView;


@property (weak, nonatomic) IBOutlet UILabel *leftLabel;

@property (weak, nonatomic) IBOutlet UILabel *rightLabel;


@end



@implementation NotiTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}




-(void)BSGSetImage:(UIImage *)theImage leftLabel:(NSString *)leftString rightLabel:(NSString *)rightString{
    
    _centerImageView.image = theImage;
    _leftLabel.text = leftString;
    _rightLabel.text = rightString;
    
    
    
}













- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
