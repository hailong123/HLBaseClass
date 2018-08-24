//
//  HLControllerBaseViewConfig.h
//  HLProduction
//
//  Created by SeaDragon on 2018/8/24.
//  Copyright © 2018年 SeaDragon. All rights reserved.
//配置控制器视图的模型

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HLControllerBaseViewConfig : NSObject

@property (nonatomic, strong) UIColor *backgroundColor;

@property (nonatomic, assign) CGRect frame;

@property (nonatomic, assign) BOOL exist;

@end

NS_ASSUME_NONNULL_END
