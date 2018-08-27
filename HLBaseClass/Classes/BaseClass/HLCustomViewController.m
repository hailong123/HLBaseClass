//
//  HLCustomViewController.m
//  HLProduction
//
//  Created by SeaDragon on 2018/8/24.
//  Copyright © 2018年 SeaDragon. All rights reserved.
//

#import "HLCustomViewController.h"

NSString * const kTitleViewId       = @"titleViewID";
NSString * const kContentViewId     = @"contentViewID";
NSString * const kBackgoroundViewId = @"backgroundViewID";

@interface HLCustomViewController ()

@property (nonatomic, strong) NSMutableDictionary <NSString *, HLControllerBaseViewConfig *> *viewsConfig;

@end

@implementation HLCustomViewController

#pragma mark - Life Cycle
- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self setupDefault];
    
    [self initViewsConfig];
    [self makeViewConfig:self.viewsConfig];
    [self buildViews];
    [self setupSubViews];
    [self setDataSources];
}

#pragma mark - Private Method
- (void)setupDefault {
    self.automaticallyAdjustsScrollViewInsets = NO;
}

- (void)initViewsConfig {
    
    CGFloat screenWight  = [UIScreen mainScreen].bounds.size.width;
    CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height;
    
    //backgroundViewConfig
    {
        HLControllerBaseViewConfig *backgroundViewConfig = [[HLControllerBaseViewConfig alloc] init];
        backgroundViewConfig.exist           = YES;
        backgroundViewConfig.frame           = CGRectMake(0, 0, screenWight, screenHeight);
        backgroundViewConfig.backgroundColor = [UIColor whiteColor];
        self.viewsConfig[kBackgoroundViewId] = backgroundViewConfig;
    }
    
    //contentViewConfig
    {
        HLControllerBaseViewConfig *contentViewConfig = [[HLControllerBaseViewConfig alloc] init];
        contentViewConfig.exist           = YES;
        contentViewConfig.frame           = CGRectMake(0, 64, screenWight, screenHeight - 64);
        contentViewConfig.backgroundColor = [UIColor clearColor];
        self.viewsConfig[kContentViewId]  = contentViewConfig;
    }
    
    //titleViewConfig
    {
        HLControllerBaseViewConfig *titleViewConfig = [[HLControllerBaseViewConfig alloc] init];
        titleViewConfig.exist           = YES;
        titleViewConfig.frame           = CGRectMake(0, 0, screenWight, 64);
        titleViewConfig.backgroundColor = [UIColor whiteColor];
        self.viewsConfig[kTitleViewId]  = titleViewConfig;
    }
}

- (void)buildViews {
    
    //backgroundViewConfig
    {
        HLControllerBaseViewConfig *backgroundViewConfig = self.viewsConfig[kBackgoroundViewId];
        
        if (backgroundViewConfig && backgroundViewConfig.exist) {
            
            UIView *backgroundView         = [[UIView alloc] initWithFrame:backgroundViewConfig.frame];
            backgroundView.backgroundColor = backgroundViewConfig.backgroundColor;
            
            [self.view addSubview:self.backgroundView];
            
            self.backgroundView = backgroundView;
        }
    }
    
    //contentViewConfig
    {
        HLControllerBaseViewConfig *contentViewConfig = self.viewsConfig[kContentViewId];
        
        if (contentViewConfig && contentViewConfig.exist) {
            
            UIView *contentView         = [[UIView alloc] initWithFrame:contentViewConfig.frame];
            contentView.backgroundColor = contentViewConfig.backgroundColor;
            
            [self.view addSubview:contentView];
            
            self.contentView = contentView;
        }
    }
    
    //titleViewConfig
    {
        HLControllerBaseViewConfig *titleConfig = self.viewsConfig[kTitleViewId];
        
        if (titleConfig && titleConfig.exist) {
            
            UIView *titleView         = [[UIView alloc] initWithFrame:titleConfig.frame];
            titleView.backgroundColor = titleConfig.backgroundColor;
            
            [self.view addSubview:titleView];
            
            self.titleView = titleView;
        }
    }
}

#pragma mark - Public Method
- (void)makeViewConfig:(NSDictionary<NSString *,HLControllerBaseViewConfig *> *)viewConfig {}

- (void)setDataSources {}

- (void)setupSubViews {}

#pragma mark - Delegate

#pragma mark - Setter And Getter
- (NSMutableDictionary <NSString *,HLControllerBaseViewConfig *> *)viewsConfig {
    if (!_viewsConfig) {
        _viewsConfig = [NSMutableDictionary dictionary];
    }
    
    return _viewsConfig;
}

#pragma mark - Delloc

@end
