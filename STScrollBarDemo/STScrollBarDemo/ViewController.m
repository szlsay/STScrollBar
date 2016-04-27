//
//  ViewController.m
//  STScrollBarDemo
//
//  Created by 沈兆良 on 16/4/27.
//  Copyright © 2016年 沈兆良. All rights reserved.
//

#import "ViewController.h"
#import "STScrollBar.h"
@interface ViewController ()

@end

@implementation ViewController

#pragma mark - --- init 视图初始化 ---

- (void)viewDidLoad
{
    [super viewDidLoad];
    STScrollBar *bar = [[STScrollBar alloc]initWithFrame:CGRectMake(10, 100, 200, 40)];
    bar.text = @"1234567890qwert";
    [bar start];
    [self.view addSubview:bar];

}

#pragma mark - --- delegate 视图委托 ---

#pragma mark - --- event response 事件相应 ---

#pragma mark - --- private methods 私有方法 ---

#pragma mark - --- setters 属性 ---

#pragma mark - --- getters 属性 —

@end
