//
//  ViewController.m
//  FFChannelDemo
//
//  Created by Administrator on 16/11/14.
//  Copyright © 2016年 Administrator. All rights reserved.
//
#import "FFChannelView.h"
#import "ViewController.h"

@interface ViewController ()<FFChannelViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *arraySource = @[@"标签1",@"标签2",@"标签3",@"阿斯顿法国那棵树的",@"爱的色放如果",@"李会计",@"运河",@"热敷的",@"给3",@"上岛咖啡",@"我们",@"你么",@"他么"];
    
    FFChannelView *viewChannel = [[FFChannelView alloc]initWithFrame:CGRectMake(10, 100, [UIScreen mainScreen].bounds.size.width, 200)];
    [viewChannel setDataSourceWithArray:arraySource.mutableCopy];
    viewChannel.delegate = self;
    
    [self.view addSubview:viewChannel];

}

//选中的 频道
- (void)channelView:(FFChannelView *)channelView didSelectChannelModel:(FFChannelModel*)channelModel{
        NSLog(@"---------选中了 %@",channelModel.name);
    
}
//取消 频道
- (void)channelView:(FFChannelView *)channelView didDeleteChannelModel:(FFChannelModel*)channelModel{
       NSLog(@"---------放弃了 %@",channelModel.name);
    
}

@end
