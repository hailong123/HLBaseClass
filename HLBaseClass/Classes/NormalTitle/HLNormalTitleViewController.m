//
//  HLNormalTitleViewController.m
//  HLBaseClass
//
//  Created by SeaDragon on 2018/8/27.
//

#import "HLNormalTitleViewController.h"

@implementation HLNormalTitleViewController

#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Private Method

- (void)makeViewConfig:(NSMutableDictionary<NSString *,HLControllerBaseViewConfig *> *)viewConfig {
    
    if (iPhoneX) {
        
        CGFloat realHeight = 64 + UIView.additionaliPhoneXTopSafeHeight;
        
        HLControllerBaseViewConfig *titleViewConfig   = viewConfig[kTitleViewId];
        HLControllerBaseViewConfig *contentViewConfig = viewConfig[kContentViewId];
        
        titleViewConfig.frame   = CGRectMake(0, 0, Width, realHeight);
        contentViewConfig.frame = CGRectMake(0, realHeight, Width, Height - realHeight);
    }
}

@end
