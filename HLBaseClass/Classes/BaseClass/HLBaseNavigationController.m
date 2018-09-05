//
//  HLBaseNavigationController.m
//  HLBaseClass
//
//  Created by SeaDragon on 2018/8/27.
//

#import "HLBaseNavigationController.h"

@interface HLBaseNavigationController ()

@end

@implementation HLBaseNavigationController

#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Private Method
- (instancetype)initWithRootViewController:(HLCustomViewController *)rootViewController
                          navigationHidden:(BOOL)hidden {
    
    HLBaseNavigationController *baseNav = [[HLBaseNavigationController alloc] initWithRootViewController:rootViewController];
    
    [rootViewController useInteractivePopGestureRecognizer];

    [baseNav setNavigationBarHidden:hidden animated:NO];
    
    return baseNav;
}

#pragma mark - Public Method

#pragma mark - Delegate

#pragma mark - Setter And Getter

#pragma mark - Delloc


@end
