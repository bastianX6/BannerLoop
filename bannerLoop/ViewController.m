//
//  ViewController.m
//  bannerLoop
//
//  Created by hisa on 15/5/7.
//  Copyright (c) 2015年 hisa. All rights reserved.
//

#import "ViewController.h"
#import "BannerLoopView.h"

@interface ViewController ()<BannerLoopDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImage *im1=[UIImage imageNamed:@"1.jpg"];
    UIImage *im2=[UIImage imageNamed:@"2.jpg"];
    UIImage *im3=[UIImage imageNamed:@"3.jpg"];
    
    UIImageView *view1 = [[UIImageView alloc] init];
    view1.image = im1;
    
    UIImageView *view2 = [[UIImageView alloc] init];
    view2.image = im2;
    
    UIImageView *view3 = [[UIImageView alloc] init];
    view3.image = im3;
    
    
    
    
    //BannerLoopView *loopView = [[BannerLoopView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 150) items: @[im1,im2,im3]];
    
    BannerLoopView *loopView = [[BannerLoopView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 150) andViews:@[view1,view2,view3]];
    
    loopView.delegate = self;
  
    [self.view addSubview:loopView];
    
}
- (void)didClickPageAtIndex:(NSInteger)index
{
    NSLog(@"page is %ld",index);
    
}

    
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
