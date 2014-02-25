//
//  STCycleSelector.m
//  CircleSelector
//
//  Created by Fleming Fu on 14-2-25.
//  Copyright (c) 2014年 spetal. All rights reserved.
//

#import "STCircleSelector.h"

int num = 12;
double pi = 3.1415926;

@implementation STCircleSelector

- (id)initWithFrame:(CGRect)frame
{
    
    self = [super initWithFrame:frame];
    
    
    if (self) {
       
        [self drawViews];
        
    }
    return self;
}

-(void) drawViews{

    double wdth = self.frame.size.width;
    double cwdth = 1*wdth/2;
    double bwdth = 13*wdth/20;
    self.bounds =  CGRectMake(0, 0, wdth, wdth);
    
    self.layer.cornerRadius = wdth/2;
    self.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.layer.borderWidth =1;
    
    
    UIView * cbgv = [[UIView alloc] init];
    cbgv.bounds = CGRectMake(0, 0, bwdth, bwdth);
    cbgv.center = CGPointMake(wdth/2, wdth/2);
    cbgv.backgroundColor = [UIColor whiteColor];
    cbgv.layer.borderColor = [UIColor lightGrayColor].CGColor;
    cbgv.layer.borderWidth =1;
    
    cbgv.layer.cornerRadius = bwdth/2;
    [self addSubview:cbgv];
    
    centerImageView = [[UIImageView alloc] init];
    centerImageView.bounds = CGRectMake(0, 0, cwdth, cwdth);
    centerImageView.center = CGPointMake(wdth/2, wdth/2);
    centerImageView.backgroundColor = [UIColor whiteColor];
    centerImageView.layer.cornerRadius = cwdth/2;
    centerImageView.layer.shadowColor = [UIColor blackColor].CGColor;
    centerImageView.layer.shadowOffset = CGSizeMake(2, 2);
    centerImageView.layer.shadowOpacity = 0.6;
    [self addSubview:centerImageView];

}


-(void)drawRect:(CGRect)rect{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [UIColor whiteColor].CGColor);
    CGContextFillRect(context, self.bounds);
    
    CGContextSetStrokeColorWithColor(context, [UIColor grayColor].CGColor);
    CGContextSetLineWidth(context, 2.0);
    
    //CGContextMoveToPoint(context, 0,0); //start at this point
    //CGContextAddLineToPoint(context, 20, 20); //draw to this point
    
    // and now draw the Path!
    //CGContextStrokePath(context);
    
    double rth = self.frame.size.width/2;
    double rth1 = 13 * self.frame.size.width/40;
    
    for (int i =0; i<num; i++) {
        double deg = (i* 2 * pi)/num;
        
        double x0 = rth + rth1 * sin(deg);
        double y0 = rth - rth1 * cos(deg);
        
        double x1 = rth + rth * sin(deg);
        double y1 = rth - rth * cos(deg);
        
        CGContextMoveToPoint(context, x0,y0);
        CGContextAddLineToPoint(context, x1, y1);
    }
    
    CGContextStrokePath(context);
}

-(void) addBorderViews{
}




@end
