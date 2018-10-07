//
//  ThirdViewController.m
//  TransportValuesDemo
//
//  Created by 黃秋陽 on 2018/9/18.
//  Copyright © 2018年 黃秋陽. All rights reserved.
//

#import "ThirdViewController.h"
#import "ViewController.h"
#import "SecondViewController.h"


@interface ThirdViewController ()<INavigateParam>

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor brownColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"message"] = @"逆传数据";
    [self.navigationController goBackWithPageName:NSStringFromClass([SecondViewController class]) withParam:params];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)NavigateBack:(NSDictionary *)param withFromClassName:(Class)c {
    
}

- (void)NavigateTo:(NSDictionary *)param withFromClassName:(Class)c {
    
}


@end
