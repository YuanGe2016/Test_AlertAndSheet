//
//  RootViewController.m
//  AlertAndSheet
//
//  Created by Bytedance on 2020/5/21.
//  Copyright © 2020 Bytedance. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CGRect screen = [[UIScreen mainScreen] bounds];
    
    UIButton* buttonAlert = [UIButton buttonWithType:UIButtonTypeSystem];
    [buttonAlert setTitle:@"Test警告框" forState:UIControlStateNormal];
    CGFloat width = 100;
    CGFloat height = 30;
    CGFloat top = 130;
    buttonAlert.frame = CGRectMake((screen.size.width - width)/2, top, width, height);
    
    [buttonAlert addTarget:self action:@selector(testAlertView:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttonAlert];
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

@end
