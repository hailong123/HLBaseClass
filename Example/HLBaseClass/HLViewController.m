//
//  HLViewController.m
//  HLBaseClass
//
//  Created by 771145867@qq.com on 08/24/2018.
//  Copyright (c) 2018 771145867@qq.com. All rights reserved.
//

#import "HLViewController.h"

#import "HLOneViewController.h"

@interface HLViewController ()

@end

@implementation HLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [self removeBackButtonFromSuperView];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    HLOneViewController *oneVC = [[HLOneViewController alloc] init];
    oneVC.title                = @"默认的标题";
    [self.navigationController pushViewController:oneVC animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
