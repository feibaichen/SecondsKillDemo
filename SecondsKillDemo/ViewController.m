//
//  ViewController.m
//  SecondsKillDemo
//
//  Created by MacOS on 2018/8/7.
//  Copyright © 2018年 MacOS. All rights reserved.
//

#import "ViewController.h"
#import "SecondsKillMenuView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSArray *timeArray = @[@"18:00",@"19:00",@"20:00",@"21:00",@"22:00",@"23:00",@"24:00"];
    NSArray *titleArray = @[@"即将开始",@"马上开始",@"已经开始",@"疯狂抢购中",@"马上开始",@"已经停止",@"已经停止"];
    
    SecondsKillMenuView *sec = [[SecondsKillMenuView alloc] initWithFrame:CGRectMake(0, 64, SCW, 64)];
    [sec setMenuTimeArray:timeArray andTitleArray:titleArray andNumOfShow:5];

    [sec setPageContentScrollViewFrame:CGRectMake(0, 64 + 64, SCW, SCH)];
    [self.view addSubview:sec.pageContentScrollView];
    [self.view addSubview:sec];
    
    for (int i = 0; i < timeArray.count; i++) {
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake( 20 + SCW * i, 200, 100, 100)];
        button.backgroundColor = [UIColor blueColor];
        [button setTitle:[NSString stringWithFormat:@"%@",timeArray[i]] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [sec.pageContentScrollView addSubview:button];
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
