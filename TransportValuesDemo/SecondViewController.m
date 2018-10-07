//
//  SecondViewController.m
//  TransportValuesDemo
//
//  Created by 黃秋陽 on 2018/9/18.
//  Copyright © 2018年 黃秋陽. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface SecondViewController ()<INavigateParam>

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    [self.navigationController popViewControllerAnimated:YES];
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"message"] = @"逆传数据";
    [self.navigationController navigateToWithPageName:NSStringFromClass([ThirdViewController class]) withParam:params];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)NavigateTo:(NSDictionary *)param withFromClassName:(Class)c{
    
}
- (void)NavigateBack:(NSDictionary *)param withFromClassName:(Class)c{
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
