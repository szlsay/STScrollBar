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
    STScrollBar *bar = [[STScrollBar alloc]initWithFrame:CGRectMake(0, 40, self.view.frame.size.width, 40)];

    bar.text = @"买不买没关系到屋里瞧一瞧到屋里看一看 本店所有商品全场卖两块都卖两块 挑啥都两块 买啥都两块 挑啥，拿啥，买啥都两块 原价都是十块八块的 现在全场卖两块 两块钱处理，两块钱甩卖 真正的清仓，真正的甩货 你不用问价，也不用讲价 也不怕被宰 全场卖两块买啥都两块 随便挑随便选 全场卖两块买啥都两块 两块钱你买不了吃亏， 两块钱你买不了上当 真正的物有所值 拿啥啥便宜 买啥啥贱 都两块 买啥都两块全场卖两块 挑啥 拿啥 买啥都两块 随便挑随便选都两块 ";
    [self.view addSubview:bar];

    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 200)];
    imageView.image = [UIImage imageNamed:@"picture0"];
    imageView.contentMode = UIViewContentModeScaleToFill;
    [self.view addSubview:imageView];
}

#pragma mark - --- delegate 视图委托 ---

#pragma mark - --- event response 事件相应 ---

#pragma mark - --- private methods 私有方法 ---

#pragma mark - --- setters 属性 ---

#pragma mark - --- getters 属性 —

@end
