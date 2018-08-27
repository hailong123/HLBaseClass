//
//  UIImage+Pod.m
//  HLBaseClass
//
//  Created by SeaDragon on 2018/8/27.
//

#import "UIImage+Pod.h"

@implementation UIImage (Pod)

+ (UIImage *)hl_imageNamed:(NSString *)name {
    NSString *bundlePath = [[[NSBundle mainBundle] privateFrameworksPath] stringByAppendingPathComponent:@"HLBaseClass.framework/HLBaseClass.bundle"];
    NSBundle *bundle = [NSBundle bundleWithPath:bundlePath];
    return [UIImage imageNamed:name inBundle:bundle compatibleWithTraitCollection:nil];
}

@end
