//
//  HLTitleViewController.m
//  HLBaseClass
//
//  Created by SeaDragon on 2018/8/27.
//

#import "HLTitleViewController.h"

#import "UIImage+Pod.h"
#import "UIView+SetRect.h"
#import "HLControllerBaseViewConfig.h"

@interface HLTitleViewController ()

@property (nonatomic, strong) UIButton *backButton;

@property (nonatomic, strong) UILabel *titleLabel;

@end

@implementation HLTitleViewController

#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Private Method
- (void)setupSubViews {
    
    //Title
    CGFloat originY      = 20.f;
    CGFloat originBottom = 0.f;
    CGFloat cutHeight    = 0.f;
    
    if (iPhoneX) {
        originY      = UIView.additionaliPhoneXTopSafeHeight;
        cutHeight    = 10.f;
    } else {
        originBottom = 20.f;
    }
    
    UILabel *titleLabel        = [[UILabel alloc] initWithFrame:CGRectMake(0, originY + cutHeight,
                                                                           Width,
                                                                           64.f - originBottom - cutHeight)];
    titleLabel.font            = [UIFont systemFontOfSize:18.f];
    titleLabel.text            = self.title;
    titleLabel.textColor       = [UIColor blackColor];
    titleLabel.textAlignment   = NSTextAlignmentCenter;
    titleLabel.backgroundColor = [UIColor whiteColor];
    
    [self.titleView addSubview:titleLabel];
    
    self.titleLabel = titleLabel;
    
    //Line
    UILabel *lineLabel        = [[UILabel alloc] initWithFrame:CGRectMake(0,
                                                                          self.titleView.height - 0.5,
                                                                          Width,
                                                                          0.5)];
    lineLabel.backgroundColor = [[UIColor grayColor] colorWithAlphaComponent:0.5];
    
    [self.titleView addSubview:lineLabel];
    
    //BackButton
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    backBtn.frame     = CGRectMake(0, 0, 100, titleLabel.height);
    backBtn.center    = CGPointMake(30, titleLabel.centerY);
    backBtn.imageView.contentMode = UIViewContentModeCenter;
    
    [backBtn setImage:[UIImage hl_imageNamed:@"back"] forState:UIControlStateNormal];
    
    [backBtn addTarget:self
                action:@selector(back:)
      forControlEvents:UIControlEventTouchUpInside];
    
    [self.titleView addSubview:backBtn];
    
    self.backButton = backBtn;
}

- (void)back:(UIButton *)sender {
    if (self.navigationController.viewControllers.count > 0) {
        [self popViewControllerAnimated:YES];
    } else {
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}
#pragma mark - Public Method

- (void)setRightButtonWithTitle:(NSString *)title
                     attributes:(nullable NSDictionary<NSAttributedStringKey,id> *)attrs {
    //右视图
    NSAttributedString *attr = [[NSAttributedString alloc] initWithString:title attributes:attrs];
    
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [backBtn setAttributedTitle:attr forState:UIControlStateNormal];
    
    [backBtn sizeToFit];
    
    backBtn.right   = self.titleView.right - 15;
    backBtn.centerY = self.titleLabel.centerY;

    [backBtn addTarget:self
                action:@selector(touchRightButtonEvent:)
      forControlEvents:UIControlEventTouchUpInside];
    
    [self.titleView addSubview:backBtn];
}

- (void)setRightButtonWithImageNamed:(NSString *)imageNamed size:(CGSize)size {
    //右视图
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    backBtn.frame     = CGRectMake(0, 0, size.width, size.height);
    backBtn.right     = self.titleView.right - 15;
    backBtn.centerY   = self.titleLabel.centerY;
    
    backBtn.imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    [backBtn setImage:[UIImage hl_imageNamed:imageNamed] forState:UIControlStateNormal];
    
    [backBtn addTarget:self
                action:@selector(touchRightButtonEvent:)
      forControlEvents:UIControlEventTouchUpInside];
    
    [self.titleView addSubview:backBtn];
}

- (void)touchRightButtonEvent:(UIButton *)sender {
    [[NSException exceptionWithName:@"方法调用错误"
                             reason:@"子类应重写该方法"
                           userInfo:nil] raise];
}

- (void)removeTitleLabelFromSuperView {
    if (self.titleLabel) {
        [self.titleLabel removeFromSuperview];
    }
}

- (void)removeBackButtonFromSuperView {
    if (self.backButton) {
        [self.backButton removeFromSuperview];
    }
}

#pragma mark - Delegate

#pragma mark - Setter And Getter

#pragma mark - Delloc

@end
