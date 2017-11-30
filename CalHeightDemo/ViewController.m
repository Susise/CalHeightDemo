//
//  ViewController.m
//  CalHeightDemo
//
//  Created by 孙巧巧 on 2017/11/30.
//  Copyright © 2017年 孙巧巧. All rights reserved.
//

#import "ViewController.h"
#import "NSString+CalHeight.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSMutableParagraphStyle *warnParagraph = [[NSMutableParagraphStyle alloc] init];
    warnParagraph.lineSpacing = 8;//行间距
    NSString *testString = @"啊看到就会撒娇的发货的开发计划署的风景卡上的饭卡就收到货付款时间回到房间啊上看到凤凰健康撒谎的飞机啊是倒海翻江卡上的繁华";
    NSMutableAttributedString *str = [[NSMutableAttributedString alloc] initWithString:testString];
    NSDictionary *dict = @{NSForegroundColorAttributeName:[UIColor greenColor],
                           NSParagraphStyleAttributeName:warnParagraph
                           };
    
    
//    [str addAttribute:NSParagraphStyleAttributeName value:warnParagraph range:NSMakeRange(0, testString. length)];
    
    [str setAttributes:dict range:NSMakeRange(0, testString.length)];
    
    UILabel *lab = [[UILabel  alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    lab.backgroundColor = [UIColor redColor];
    lab.textColor = [UIColor orangeColor];
//    lab.text = testString;
    lab.numberOfLines = 0;
    lab.font = [UIFont systemFontOfSize:17];
    lab.attributedText = str;
    
    [self.view addSubview:lab];
    
//    lab .frame = CGRectMake(100, 100, 200, [testString getHeight:testString font:lab.font width:200]);
    
    
    
    lab.frame = CGRectMake(100, 100, 200, [testString getSpaceLabelHeightwithSpeace:warnParagraph.lineSpacing withFont:lab.font withWith:200]);
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
