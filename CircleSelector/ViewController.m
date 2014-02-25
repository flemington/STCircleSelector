//
//  ViewController.m
//  CircleSelector
//
//  Created by Fleming Fu on 14-2-25.
//  Copyright (c) 2014年 spetal. All rights reserved.
//

#import "ViewController.h"
#import "STCircleSelector.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    STCircleSelector * sc = [[STCircleSelector alloc] initWithFrame:CGRectMake(84, 84, 600, 600)];
    [self.view addSubview:sc];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
