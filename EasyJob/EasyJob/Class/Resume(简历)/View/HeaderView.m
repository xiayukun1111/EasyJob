//
//  HeaderView.m
//  WaveViewDemo
//
//  Created by 纪宇伟 on 2017/6/22.
//  Copyright © 2017年 jyw. All rights reserved.
//

#import "HeaderView.h"
#import "JYWaveView.h"

@interface HeaderView ()

@property(nonatomic,strong)JYWaveView *doubleWaveView;

@end


@implementation HeaderView

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = KBackgroundColor;
        [self customHeaderView];
        [self setUpWaveView];
    }
    
    return self;
}

-(void)customHeaderView
{
    CGSize cSize = self.bounds.size;
    
    _userImgView = [[UIImageView alloc] initWithFrame:CGRectMake(cSize.width / 2 - 40, cSize.height / 2 - 70, 80, 80)];
    _userImgView.backgroundColor = [UIColor redColor];
    _userImgView.layer.cornerRadius = _userImgView.bounds.size.width / 2;
    _userImgView.layer.masksToBounds = YES;
    _userImgView.image = [UIImage imageNamed:@"headImage_icon"];
    [self addSubview:_userImgView];
    
    _nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, _userImgView.frame.origin.y + _userImgView.frame.size.height + 10, cSize.width - 20, 30)];
//    _nameLabel.backgroundColor = [UIColor greenColor];
    _nameLabel.font = [UIFont boldSystemFontOfSize:20];
    _nameLabel.textColor = [UIColor whiteColor];
    _nameLabel.textAlignment = NSTextAlignmentCenter;
    
   
    [self addSubview:_nameLabel];
    
//     _jobLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, _nameLabel.frame.origin.y + _nameLabel.frame.size.height, cSize.width - 20, 30)];
////    _jobLabel.backgroundColor = [UIColor blueColor];
//    _jobLabel.font = [UIFont systemFontOfSize:16];
//    _jobLabel.textColor = [UIColor whiteColor];
//    _jobLabel.textAlignment = NSTextAlignmentCenter;
//    _jobLabel.text = @"自由工作者";
//    [self addSubview:_jobLabel];
    
}

-(void)setUpWaveView
{
    _doubleWaveView = [[JYWaveView alloc] initWithFrame:CGRectMake(0, self.bounds.size.height - 20, self.bounds.size.width, 20)];
    _doubleWaveView.frontColor = [UIColor whiteColor];
    _doubleWaveView.insideColor = RGBA(125, 155, 255, 1);
    _doubleWaveView.directionType = WaveDirectionTypeFoward;
    [self addSubview:_doubleWaveView];
}



@end
