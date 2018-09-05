//
//  HLTitleViewController.h
//  HLBaseClass
//
//  Created by SeaDragon on 2018/8/27.
//

#import "HLCustomViewController.h"

#import "UIImage+Pod.h"
#import "UIView+SetRect.h"
#import "HLControllerBaseViewConfig.h"

NS_ASSUME_NONNULL_BEGIN

@interface HLTitleViewController : HLCustomViewController

- (void)removeBackButtonFromSuperView;

- (void)removeTitleLabelFromSuperView;

- (void)setRightButtonWithTitle:(NSString *)title
                     attributes:(nullable NSDictionary<NSAttributedStringKey, id> *)attrs;

- (void)setRightButtonWithImageNamed:(NSString *)imageNamed size:(CGSize)size;

- (void)touchRightButtonEvent:(UIButton *)sender;

@end

NS_ASSUME_NONNULL_END
