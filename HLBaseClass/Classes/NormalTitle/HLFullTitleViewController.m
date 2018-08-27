//
//  HLFullTitleViewController.m
//  HLBaseClass
//
//  Created by SeaDragon on 2018/8/27.
//

#import "HLFullTitleViewController.h"

@interface HLFullTitleViewController ()

@end

@implementation HLFullTitleViewController

#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Private Method
- (void)makeViewConfig:(NSMutableDictionary<NSString *,HLControllerBaseViewConfig *> *)viewConfig {
    
    viewConfig[kContentViewId].frame = CGRectMake(0, 0, Width, Height);
    
    if (iPhoneX) {
        HLControllerBaseViewConfig *titleViewConfig = viewConfig[kTitleViewId];
        titleViewConfig.frame = CGRectMake(0, 0, Width, 64 + UIView.additionaliPhoneXTopSafeHeight);
    }
}

#pragma mark - Public Method

#pragma mark - Delegate

#pragma mark - Setter And Getter

#pragma mark - Delloc


@end
