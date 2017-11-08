//
//  ViewController.m
//  ScrollViewContentInsetAdjustmentBehaviorDemo
//
//  Created by 李择一 on 2017/11/8.
//  Copyright © 2017年 李择一. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame: self.view.bounds];
    scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    
    UIImage *testImg = [UIImage imageNamed: @"aaaa"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage: testImg];
    
    [self.view addSubview: scrollView];
    
    //以下全部例子，请在iPhoneX模拟器上查看。
#if 0
    //UIScrollViewContentInsetAdjustmentScrollableAxes例1
    //如果scrollView的ContentSize很小，则不考虑安全区域
    CGRect frame = imageView.frame;
    frame.size.width = 300;
    frame.size.height = 300;
    imageView.frame = frame;
    [scrollView addSubview: imageView];
    
    scrollView.contentSize = imageView.frame.size;
    
    scrollView.contentInsetAdjustmentBehavior =  UIScrollViewContentInsetAdjustmentScrollableAxes;
#elif 0
    //UIScrollViewContentInsetAdjustmentScrollableAxes例子2，横屏查看
    //如果scrollView的ContentSize大于超出显示范围，则计算安全区域
    CGRect frame = imageView.frame;
    frame.size.width = 300;
    frame.size.height = 600;
    imageView.frame = frame;
    [scrollView addSubview: imageView];
    
    scrollView.contentSize = imageView.frame.size;
    
    scrollView.contentInsetAdjustmentBehavior =  UIScrollViewContentInsetAdjustmentScrollableAxes;
#elif 0
    //UIScrollViewContentInsetAdjustmentScrollableAxes例子3，接上例，横屏查看
    //如果强制横向滚动，则计算安全区域
    CGRect frame = imageView.frame;
    frame.size.width = 300;
    frame.size.height = 600;
    imageView.frame = frame;
    [scrollView addSubview: imageView];
    
    scrollView.contentSize = imageView.frame.size;
    
    scrollView.alwaysBounceHorizontal = YES;
    
    scrollView.contentInsetAdjustmentBehavior =  UIScrollViewContentInsetAdjustmentScrollableAxes;
#elif 0
    //UIScrollViewContentInsetAdjustmentAutomatic例子，横屏查看
    //对照UIScrollViewContentInsetAdjustmentScrollableAxes例1
    //就算不够高度，也会空出上下两部分的安全区域。
    CGRect frame = imageView.frame;
    frame.size.width = 300;
    frame.size.height = 300;
    imageView.frame = frame;
    [scrollView addSubview: imageView];
    
    scrollView.contentSize = imageView.frame.size;
    
    scrollView.contentInsetAdjustmentBehavior =  UIScrollViewContentInsetAdjustmentAutomatic;
#elif 0
    //UIScrollViewContentInsetAdjustmentNever例子
    //完全不考虑安全区域
    CGRect frame = imageView.frame;
    frame.size.width = 1000;
    frame.size.height = 1000;
    imageView.frame = frame;
    
    [scrollView addSubview: imageView];
    
    scrollView.contentSize = imageView.frame.size;
    
    scrollView.contentInsetAdjustmentBehavior =  UIScrollViewContentInsetAdjustmentNever;
#elif 1
    //UIScrollViewContentInsetAdjustmentAlways例子
    //不管内容，全部考虑安全区域
    CGRect frame = imageView.frame;
    frame.size.width = 300;
    frame.size.height = 300;
    imageView.frame = frame;
    
    [scrollView addSubview: imageView];
    
    scrollView.contentSize = imageView.frame.size;
    
    scrollView.contentInsetAdjustmentBehavior =  UIScrollViewContentInsetAdjustmentAlways;
#endif
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
