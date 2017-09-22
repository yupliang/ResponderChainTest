//
//  UIApplication+LZSwizzing.m
//  ReponderChainTest
//
//  Created by yupeiliang on 2017/9/22.
//  Copyright © 2017年 liangzai123. All rights reserved.
//

#import "UIApplication+LZSwizzing.h"
#import <objc/runtime.h>

@implementation UIApplication (LZSwizzing)
+ (void)load {
    Method fromMethod = class_getInstanceMethod([self class], @selector(sendAction:to:from:forEvent:));
    Method toMethod = class_getInstanceMethod([self class], @selector(my_sendAction:to:from:forEvent:));
    /**
     *  我们在这里使用class_addMethod()函数对Method Swizzling做了一层验证，如果self没有实现被交换的方法，会导致失败。
     *  而且self没有交换的方法实现，但是父类有这个方法，这样就会调用父类的方法，结果就不是我们想要的结果了。
     *  所以我们在这里通过class_addMethod()的验证，如果self实现了这个方法，class_addMethod()函数将会返回NO，我们就可以对其进行交换了。
     */
    if (!class_addMethod([self class], @selector(sendAction:to:from:forEvent:), method_getImplementation(toMethod), method_getTypeEncoding(toMethod))) {
        method_exchangeImplementations(fromMethod, toMethod);
    }
}

- (BOOL)my_sendAction:(SEL)action to:(id)target from:(id)sender forEvent:(UIEvent *)event {
    NSLog(@"%@ \n %@ \n %@ \n %@", NSStringFromSelector(action),target,sender,event);
    return [self my_sendAction:action to:target from:sender forEvent:event];
}
@end
