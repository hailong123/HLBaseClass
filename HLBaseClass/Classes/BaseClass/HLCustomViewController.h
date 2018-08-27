//
//  HLCustomViewController.h
//  HLProduction
//
//  Created by SeaDragon on 2018/8/24.
//  Copyright © 2018年 SeaDragon. All rights reserved.
//控制器基类

#import "HLBaseCustomViewController.h"

#import "HLControllerBaseViewConfig.h"

extern NSString * const kTitleViewId;
extern NSString * const kContentViewId;
extern NSString * const kBackgoroundViewId;

NS_ASSUME_NONNULL_BEGIN

@interface HLCustomViewController : HLBaseCustomViewController

//  level            view            frame
//  ---------------------------------------------------------------
//
//  highest          windowView      0 x  0 x width x height
//
//  higher           loadingView     0 x 64 x width x (height - 64)
//
//  high             titleView       0 x  0 x width x 64
//
//  high             contentView     0 x 64 x width x (height - 64)
//
//  normal           backgroundView  0 x  0 x width x height
//

/* 标题栏 ----> 导航栏 */
@property (nonatomic, strong) UIView *titleView;

/* 内容视图 */
@property (nonatomic, strong) UIView *contentView;

/* 背景视图 */
@property (nonatomic, strong) UIView *backgroundView;

#pragma mark - Overwrite by SubClass
//对视图进行配置
- (void)makeViewConfig:(NSMutableDictionary <NSString *, HLControllerBaseViewConfig *> *)viewConfig;

//设置数据源
- (void)setDataSources;

//布局子视图
- (void)setupSubViews;

@end

NS_ASSUME_NONNULL_END
