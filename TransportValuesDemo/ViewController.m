//
//  ViewController.m
//  TransportValuesDemo
//
//  Created by 黃秋陽 on 2018/9/18.
//  Copyright © 2018年 黃秋陽. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()<INavigateParam>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    SecondViewController *sVC = [[SecondViewController alloc]init];
//    [self.navigationController pushViewController:sVC animated:YES];
    NSMutableDictionary *param = [NSMutableDictionary dictionary];
    param[@"message"] = @"顺传数据";
    [self.navigationController navigateToWithPageName:NSStringFromClass([SecondViewController class]) withParam:param];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)NavigateBack:(NSDictionary *)param withFromClassName:(Class)c {
    
}

- (void)NavigateTo:(NSDictionary *)param withFromClassName:(Class)c {
    
}

@end
