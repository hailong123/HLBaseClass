//
//  HLBaseCustomViewController.m
//  HLProduction
//
//  Created by SeaDragon on 2018/8/24.
//  Copyright © 2018年 SeaDragon. All rights reserved.
//

#import "HLBaseCustomViewController.h"

@interface HLBaseCustomViewController ()
<
    UIGestureRecognizerDelegate
>

@end

@implementation HLBaseCustomViewController

@synthesize enableInteractivePopGestureRecognizer = _enableInteractivePopGestureRecognizer;

#pragma mark - Life Cycle

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
}

#pragma mark - Private Method

#pragma mark - Public Method
- (void)useInteractivePopGestureRecognizer {
    self.navigationController.interactivePopGestureRecognizer.delegate = self;
}

- (void)popViewControllerAnimated:(BOOL)animated {
    [self.navigationController popViewControllerAnimated:animated];
}

- (void)popToRootViewControllerAnimation:(BOOL)animated {
    [self.navigationController popToRootViewControllerAnimated:animated];
}

- (void)popToViewController:(UIViewController *)controller animated:(BOOL)animated {
    [self.navigationController popToViewController:controller animated:animated];
}

#pragma mark - Delegate

#pragma mark - Setter And Getter

- (void)setEnableInteractivePopGestureRecognizer:(BOOL)enableInteractivePopGestureRecognizer {
    _enableInteractivePopGestureRecognizer                            = enableInteractivePopGestureRecognizer;
    self.navigationController.interactivePopGestureRecognizer.enabled = enableInteractivePopGestureRecognizer;
}

- (BOOL)enableInteractivePopGestureRecognizer {
    return _enableInteractivePopGestureRecognizer;
}

#pragma mark - Delloc

@end
