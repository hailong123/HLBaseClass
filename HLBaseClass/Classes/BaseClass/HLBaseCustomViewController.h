//
//  HLBaseCustomViewController.h
//  HLProduction
//
//  Created by SeaDragon on 2018/8/24.
//  Copyright © 2018年 SeaDragon. All rights reserved.
//控制类的基类

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HLBaseCustomViewController : UIViewController

@property (nonatomic, assign) BOOL enableInteractivePopGestureRecognizer;

- (void)useInteractivePopGestureRecognizer;

- (void)popViewControllerAnimated:(BOOL)animated;

- (void)popToRootViewControllerAnimation:(BOOL)animated;

- (void)popToViewController:(UIViewController *)controller animated:(BOOL)animated;

@end

NS_ASSUME_NONNULL_END
