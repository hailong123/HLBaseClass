//
//  HLBaseNavigationController.h
//  HLBaseClass
//
//  Created by SeaDragon on 2018/8/27.
//

#import <UIKit/UIKit.h>

#import "HLCustomViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface HLBaseNavigationController : UINavigationController

- (instancetype)initWithRootViewController:(HLCustomViewController *)rootViewController
                          navigationHidden:(BOOL)hidden;

@end

NS_ASSUME_NONNULL_END
