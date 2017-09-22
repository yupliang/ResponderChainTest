//
//  LZButton.m
//  ReponderChainTest
//
//  Created by yupeiliang on 2017/9/22.
//  Copyright © 2017年 liangzai123. All rights reserved.
//

#import "LZButton.h"

@implementation LZButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (BOOL)canBecomeFirstResponder {
    NSLog(@"%s %d", __FUNCTION__, [super canBecomeFirstResponder]);
    return [super canBecomeFirstResponder];
}
- (UIResponder *)nextResponder {
    NSLog(@"%s %@ | superview %@", __FUNCTION__, [super nextResponder], self.superview);
    return [super nextResponder];
}

- (BOOL)becomeFirstResponder {
    NSLog(@"%s %d", __FUNCTION__, [super becomeFirstResponder]);
    return [super becomeFirstResponder];
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    NSLog(@"%s", __FUNCTION__);
    return [super hitTest:point withEvent:event];
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    NSLog(@"%s", __FUNCTION__);
    return [super pointInside:point withEvent:event];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%s", __FUNCTION__);
    [super touchesBegan:touches withEvent:event];
}

- (void)sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event {
    NSLog(@"%s", __FUNCTION__);
    [super sendAction:action to:nil forEvent:event];
}



@end
