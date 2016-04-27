//
//  STScrollBar.m
//  STScrollBarDemo
//
//  Created by https://github.com/STShenZhaoliang/STScrollBar on 16/4/27.
//  Copyright © 2016年 沈兆良. All rights reserved.
//

#import "STScrollBar.h"
#import "UIView+ST.h"
NS_ASSUME_NONNULL_BEGIN
@interface STScrollBar()
/** 1.前面的文本框 */
@property (nonatomic, strong) UILabel *labelFront;
/** 2.后面的文本框 */
@property (nonatomic, strong) UILabel *labelBack;
/** 3.内容的宽度 */
@property (nonatomic, assign) CGFloat widthContent;
@end
NS_ASSUME_NONNULL_END

@implementation STScrollBar

#pragma mark - --- init 视图初始化 ---

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI
{
    _font = [UIFont systemFontOfSize:17];
    _colorText = [UIColor whiteColor];
    _start = YES;
    _text = @"";
    self.backgroundColor = [UIColor blackColor];
    self.clipsToBounds = YES;
    [self addSubview:self.labelFront];
    [self addSubview:self.labelBack];
}

- (void)reloadFrame
{
    self.labelFront.text = self.text;
    self.labelBack.text = self.text;
    self.time = self.text.length / 5;
    self.widthContent = [self.labelFront sizeThatFits:CGSizeZero].width;
    self.labelFront.frame = CGRectMake(0, 0, self.widthContent, self.height);
    if (self.widthContent > self.width) {
        self.labelBack.frame = CGRectMake(self.widthContent, 0, self.widthContent, self.height);
    }
}
#pragma mark - --- delegate 视图委托 ---

#pragma mark - --- event response 事件相应 ---
- (void)startAnimation {
    if (self.width > self.widthContent) {
        return;
    }

    if (self.start) {
        [UIView transitionWithView:self
                          duration:self.time
                           options:UIViewAnimationOptionCurveLinear
                        animations:^{
                            self.labelBack.x -= self.widthContent;
                            self.labelFront.x -= self.widthContent;
                        } completion:^(BOOL finished) {
                            self.labelBack.x += self.widthContent;
                            self.labelFront.x += self.widthContent;
                            [self startAnimation];
                        }];
    }
}


#pragma mark - --- private methods 私有方法 ---

#pragma mark - --- setters 属性 ---
- (void)setFont:(UIFont *)font
{
    _font = font;
    self.labelBack.font = font;
    self.labelFront.font = font;
}

- (void)setColorText:(UIColor *)colorText
{
    _colorText = colorText;
    self.labelFront.textColor = colorText;
    self.labelBack.textColor = colorText;
}

- (void)setText:(NSString *)text
{
    _text = text;
    [self reloadFrame];
    [self startAnimation];
}

- (void)setTime:(NSTimeInterval)time
{
    _time = time;
    [self startAnimation];
}

- (void)setStart:(BOOL)start
{
    _start = start;
    [self reloadFrame];
    [self startAnimation];
}

#pragma mark - --- getters 属性 —
- (UILabel *)labelFront
{
    if (!_labelFront) {
        _labelFront = [[UILabel alloc]init];
        _labelFront.textColor = self.colorText;
        _labelFront.font = self.font;
    }
    return _labelFront;
}

- (UILabel *)labelBack
{
    if (!_labelBack) {
        _labelBack = [[UILabel alloc]init];
        _labelBack.textColor = self.colorText;
        _labelBack.font = self.font;
    }
    return _labelBack;
}

@end
