//
//  ViewController.m
//  AlertAndSheet
//
//  Created by Bytedance on 2020/5/21.
//  Copyright © 2020 Bytedance. All rights reserved.
//

#import "ViewController.h"
#import "KVCTest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CGRect screen = [[UIScreen mainScreen] bounds];
    
    /////////////////////////////////////////////////////////////
    UIButton* buttonAlert = [UIButton buttonWithType:UIButtonTypeSystem];
    [buttonAlert setTitle:@"Test警告框" forState:UIControlStateNormal];
    CGFloat width = 100;
    CGFloat height = 30;
    CGFloat top = 130;
    buttonAlert.frame = CGRectMake((screen.size.width - width)/2, top, width, height);
    
    [buttonAlert addTarget:self action:@selector(testAlertView:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttonAlert];
    
    /////////////////////////////////////////////////////////////
    UIButton* button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"单例测试" forState:UIControlStateNormal];
    CGFloat s_width = 100;
    CGFloat s_height = 30;
    CGFloat s_top = 230;
    button.frame = CGRectMake((screen.size.width - s_width)/2, s_top, s_width, s_height);
    [button addTarget:self action:@selector(singleTestButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

- (void)testAlertView:(id)sender {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Alert" message:@"Alert text goes here" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *noAction = [UIAlertAction actionWithTitle:@"No" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
        NSLog(@"Tap No Button");
    }];
    
    UIAlertAction *yesAction = [UIAlertAction actionWithTitle:@"Yes"  style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        NSLog(@"Tap Yes Button");
    }];
    
    [alertController addAction:noAction];
    [alertController addAction:yesAction];
    
    [self presentViewController:alertController animated:true completion:nil];
}

- (void)singleTestButtonClicked:(id)sender
{
    KVCTest *kvctest = [[KVCTest alloc] init];
    NSLog(@"%@", kvctest);
    
}
@end
