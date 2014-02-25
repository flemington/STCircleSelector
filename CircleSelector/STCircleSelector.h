//
//  STCycleSelector.h
//  CircleSelector
//
//  Created by Fleming Fu on 14-2-25.
//  Copyright (c) 2014年 spetal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface STCircleSelector : UIView
{
    UIImageView * centerImageView;

}


@property (nonatomic,assign) NSInteger currentSelectedIndex;
@property (nonatomic,strong) UIImage * centerImg;
@property (nonatomic,strong) NSArray * borderImgs;



@end
