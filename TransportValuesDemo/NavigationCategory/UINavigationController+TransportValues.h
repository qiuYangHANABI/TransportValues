//
//  UINavigationController+TransportValues.h
//  TransportValuesDemo
//
//  Created by 黃秋陽 on 2018/9/18.
//  Copyright © 2018年 黃秋陽. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (TransportValues)

//带有参数的导航
-(void)navigateToWithPageName:(NSString *)name withParam:(NSDictionary *)param;
//返回
-(void)goBackWithPageName:(NSString *)pageName withParam:(NSDictionary *)param;

-(void)navigateToWithPageName:(NSString *)name;

-(void)goBack;

@end
