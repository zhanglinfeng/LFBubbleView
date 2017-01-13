//
//  ViewController.m
//  LFTipsViewDemo
//
//  Created by 张林峰 on 16/6/22.
//  Copyright © 2016年 张林峰. All rights reserved.
//

#import "ViewController.h"
#import "LFBubbleView.h"

@interface ViewController ()

@property (nonatomic, strong) LFBubbleView *bubbleView;
@property (strong, nonatomic) IBOutlet UIView *viewTarget;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)up:(id)sender {
    NSString *strTip = @"可设置边框线，三角大小，三角位置，圆角大小，背景色";
    [_bubbleView removeFromSuperview];
    _bubbleView  = [[LFBubbleView alloc] initWithFrame:CGRectMake(0, 0, 200, 160)];
    _bubbleView.direction = LFTriangleDirection_Up;
    _bubbleView.lbTitle.text = strTip;
    _bubbleView.borderColor = [UIColor grayColor];
    _bubbleView.borderWidth = 1;
    _bubbleView.triangleH = 20;
    _bubbleView.triangleW = 20;
    _bubbleView.triangleXY = 40;
    _bubbleView.cornerRadius = 20;
    _bubbleView.color = [UIColor orangeColor];
    [self.view addSubview:_bubbleView];
    [_bubbleView showInPoint:CGPointMake(_viewTarget.center.x, _viewTarget.center.y + 8)];
    [_bubbleView doTranslationAnimate];
    
}
- (IBAction)down:(id)sender {
    NSString *strTip = @"什么都不设置的气泡";
    [_bubbleView removeFromSuperview];
    _bubbleView  = [[LFBubbleView alloc] initWithFrame:CGRectMake(0, 0, 160, 80)];
    _bubbleView.lbTitle.text = strTip;
    [self.view addSubview:_bubbleView];
    [_bubbleView showInPoint:CGPointMake(_viewTarget.center.x, _viewTarget.center.y - 8)];
}

- (IBAction)left:(id)sender {
    NSString *strTip = @"三角距上30";
    [_bubbleView removeFromSuperview];
    _bubbleView  = [[LFBubbleView alloc] initWithFrame:CGRectMake(0, 0, 120, 160)];
    _bubbleView.direction = LFTriangleDirection_Left;
    _bubbleView.lbTitle.text = strTip;
    _bubbleView.triangleXY = 20;
    [self.view addSubview:_bubbleView];
    [_bubbleView showInPoint:CGPointMake(_viewTarget.center.x + 8, _viewTarget.center.y)];
    [_bubbleView doSpringAnimate];
}
- (IBAction)right:(id)sender {
    NSString *strTip = @"三角在1/4位置";
    [_bubbleView removeFromSuperview];
    _bubbleView  = [[LFBubbleView alloc] initWithFrame:CGRectMake(0, 0, 100, 160)];
    _bubbleView.direction = LFTriangleDirection_Right;
    _bubbleView.lbTitle.text = strTip;
    _bubbleView.triangleXYScale = 1.0f/3.0f;
    _bubbleView.dismissAfterSecond = 5;
    [self.view addSubview:_bubbleView];
    [_bubbleView showInPoint:CGPointMake(_viewTarget.center.x - 8, _viewTarget.center.y)];
}

@end
