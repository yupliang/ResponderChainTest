//
//  ViewController.m
//  ReponderChainTest
//
//  Created by yupeiliang on 2017/9/22.
//  Copyright © 2017年 liangzai123. All rights reserved.
//

#import "ViewController.h"
#import "HTView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    HTView *htView = [[HTView alloc] initWithFrame:CGRectMake(0, 300, 80, 40)];
    htView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:htView];
    NSLog(@"%s %@", __FUNCTION__, self);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actMesg:(id)sender {
    NSLog(@"%s", __FUNCTION__);
}

- (BOOL)canBecomeFirstResponder {
    NSLog(@"%s %d", __FUNCTION__, [super canBecomeFirstResponder]);
    return [super canBecomeFirstResponder];
}
- (UIResponder *)nextResponder {
    NSLog(@"%s %@ | superview %@", __FUNCTION__, [super nextResponder], self.view.superview);
    return [super nextResponder];
}
- (BOOL)becomeFirstResponder {
    NSLog(@"%s %d", __FUNCTION__, [super becomeFirstResponder]);
    return [super becomeFirstResponder];
}
@end
