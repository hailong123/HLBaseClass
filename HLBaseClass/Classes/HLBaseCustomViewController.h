//
//  HLBaseCustomViewController.h
//  HLProduction
//
//  Created by SeaDragon on 2018/8/24.
//  Copyright © 2018年 SeaDragon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HLBaseCustomViewController : UIViewController

@property (nonatomic, assign) BOOL enableInteractivePopGestureRecognizer;

- (void)useInteractivePopGestureRecognizer;

- (void)popViewControllerAnimated:(BOOL)animated;

- (void)popToRootViewControllerAnimation:(BOOL)animated;

- (void)popToViewController:(UIViewController *)controller animated:(BOOL)animated;

@end
