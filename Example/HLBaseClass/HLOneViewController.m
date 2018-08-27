//
//  HLOneViewController.m
//  HLBaseClass_Example
//
//  Created by SeaDragon on 2018/8/27.
//  Copyright © 2018年 771145867@qq.com. All rights reserved.
//

#import "HLOneViewController.h"

@interface HLOneViewController ()

@end

@implementation HLOneViewController

#pragma mark - Life Cycle
- (void)viewDidLoad {
    
    [super viewDidLoad];
    
}

#pragma mark - Private Method
- (void)makeViewConfig:(NSMutableDictionary<NSString *,HLControllerBaseViewConfig *> *)viewConfig {
    
    [super makeViewConfig:viewConfig];
    
    HLControllerBaseViewConfig *backgroundConfig = viewConfig[kContentViewId];
    
    backgroundConfig.backgroundColor = [UIColor redColor];
}

- (void)touchRightButtonEvent:(UIButton *)sender {
    NSLog(@"点击签到");
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
}

#pragma mark - Public Method

#pragma mark - Delegate

#pragma mark - Setter And Getter

#pragma mark - Delloc

@end
