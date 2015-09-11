//
//  ViewController.m
//  GGClickButton
//
//  Created by __无邪_ on 15/9/11.
//  Copyright © 2015年 __无邪_. All rights reserved.
//

#import "ViewController.h"
#import "UIControl+Categories.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    // 用runtime 解决UIButton 重复点击问题
    
    UIButton *tempBtn = [[UIButton alloc] initWithFrame:CGRectMake((CGRectGetWidth(self.view.bounds) - 300 ) / 2, 100, 300, 44)];
    [tempBtn setBackgroundColor:[UIColor cyanColor]];
    [tempBtn setTitle:@"Click me,Baby !" forState:UIControlStateNormal];
    [tempBtn addTarget:self action:@selector(clickWithInterval:) forControlEvents:UIControlEventTouchUpInside];
    tempBtn.uxy_acceptEventInterval = 2;
    [self.view addSubview:tempBtn];
    
    
    
}



- (void)clickWithInterval:(id)sender{
    NSLog(@"Why not");
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
