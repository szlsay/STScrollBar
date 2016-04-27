//
//  STScrollBar.h
//  STScrollBarDemo
//
//  Created by 沈兆良 on 16/4/27.
//  Copyright © 2016年 沈兆良. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@interface STScrollBar : UIView
/** 1.标题 */
@property (nonatomic, strong) NSString *text;
/** 2.滚动一圈的时间, 默认是标题长度的五分之一 */
@property (nonatomic, assign) NSTimeInterval time;

- (void)start;
@end
NS_ASSUME_NONNULL_END
