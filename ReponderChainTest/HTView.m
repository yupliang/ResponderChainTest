//
//  HTView.m
//  TimeProfiler
//
//  Created by yupeiliang on 2017/9/20.
//  Copyright © 2017年 liangzai123. All rights reserved.
//

#import "HTView.h"

@implementation HTView

- (BOOL)canBecomeFirstResponder {
    NSLog(@"%s", __FUNCTION__);
    return NO;
}

- (BOOL)becomeFirstResponder {
    NSLog(@"%s", __FUNCTION__);
    return YES;
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    UIView *v = [super hitTest:point withEvent:event];
    NSLog(@"v %@ self %@", v,self);
    return v;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%s", __FUNCTION__);
    [super touchesBegan:touches withEvent:event];
}

@end
