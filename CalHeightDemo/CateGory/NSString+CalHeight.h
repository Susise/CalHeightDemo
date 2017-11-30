//
//  NSString+CalHeight.h
//  CalHeightDemo
//
//  Created by 孙巧巧 on 2017/11/30.
//  Copyright © 2017年 孙巧巧. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (CalHeight)

/**
 计算富文本字体高度
 
 @param lineSpeace 行高
 @param font 字体
 @param width 字体所占宽度
 @return 富文本高度
 
 */
- (CGFloat)getSpaceLabelHeightwithSpeace:(CGFloat)lineSpeace withFont:(UIFont*)font withWith:(CGFloat)width;


- (CGFloat)getHeight:(NSString *)string font:(UIFont *)font width:(CGFloat)width;

@end
