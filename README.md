# LFBubbleView
方便灵活的气泡框，可设置边框，三角大小位置，颜色，圆角，甚至自定义里面的内容<br/>
支持CocoaPods

1.基本使用方法
-----------------------------------  
    NSString *strTip = @"什么都不设置的气泡";
    LFBubbleView *bubbleView  = [[LFBubbleView alloc] initWithFrame:CGRectMake(0, 0, 160, 80)];
    bubbleView.lbTitle.text = strTip;//文字
    [self.view addSubview:bubbleView];
    [bubbleView showInPoint:CGPointMake(100, 100)];

2.设置样式
-----------------------------------  
    NSString *strTip = @"可设置边框线，三角大小，三角位置，圆角大小，背景色";
    LFBubbleView *bubbleView  = [[LFBubbleView alloc] initWithFrame:CGRectMake(0, 0, 200, 160)];
    bubbleView.direction = LFTriangleDirection_Up;//三角方向
    bubbleView.lbTitle.text = strTip;//文字
    bubbleView.borderColor = [UIColor grayColor];//边框颜色
    bubbleView.borderWidth = 1;//边框线宽
    bubbleView.triangleH = 20;//三角高
    bubbleView.triangleW = 20;//三角底边长
    bubbleView.triangleXY = 40;//三角中心的x
    bubbleView.cornerRadius = 20;//气泡圆角
    bubbleView.color = [UIColor orangeColor];//气泡颜色
    [self.view addSubview:bubbleView];
    [bubbleView showInPoint:CGPointMake(100, 100)];

3.辅助功能
-----------------------------------  
    bubbleView.dismissAfterSecond = 5; //5秒后自动消失，不设置则不自动消失
    bubbleView.showOnceKey = @"bubbleViewHasShow"; //如果设置了Key，该气泡只显示一次（比如某个新功能只需要提示用户一次）
      - (void)doTranslationAnimate;//来回平移动画
      - (void)doSpringAnimate;//弹跳动画

4.还有其他设置请看.h文件暴露在外的属性，
-----------------------------------  
    如：暴露了一个容器，你可以在里面自定义任何内容。
