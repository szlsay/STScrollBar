//
//  STScrollBar.h
//  STScrollBarDemo
//
//  Created by https://github.com/STShenZhaoliang/STScrollBar on 16/4/27.
//  Copyright © 2016年 沈兆良. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@interface STScrollBar : UIView
/** 1.标题,必须设在frame之后，如果重新设置字体的属性，请将标题内容在之后设置*/
@property (nonatomic, strong) NSString *text;
/** 2.滚动一圈的时间, 默认是标题长度的五分之一, 如果重新设置，在设置完标题text属性之后*/
@property (nonatomic, assign) NSTimeInterval time;
/** 3.字体,默认是[UIFont systemFontOfSize:17] */
@property (nonatomic, strong) UIFont *font;
/** 4.字体颜色,默认是[UIColor whiteColor]*/
@property (nonatomic, strong) UIColor *colorText;
/** 5.开始动画,默认是YES, 1.如果内容的长度小于frame的width，将不会滚动.2.必须先设置内容 */
@property (nonatomic, assign, getter=isStart) BOOL start;
@end
NS_ASSUME_NONNULL_END
