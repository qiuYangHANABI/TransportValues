//
//  UINavigationController+TransportValues.m
//  TransportValuesDemo
//
//  Created by 黃秋陽 on 2018/9/18.
//  Copyright © 2018年 黃秋陽. All rights reserved.
//

#import "UINavigationController+TransportValues.h"
#import "INavigateParam.h"

@implementation UINavigationController (TransportValues)


/**
 push页面
 
 @param name 目标页面类名
 @param param 所传参数
 */
-(void)navigateToWithPageName:(NSString *)name withParam:(NSDictionary *)param{
    //    bi_event_EnterPage *event = [[bi_event_EnterPage alloc]init];
    //    event.m_PageID = name;
    //    [event log];
    NSLog(@"%@ ------- %s", param, __func__);
    Class aimClass = NSClassFromString(name);
    UIViewController *vc = [[aimClass alloc]init];
    if([vc conformsToProtocol:@protocol(INavigateParam)]){
        id <INavigateParam> navigate=(id<INavigateParam>)vc;
        [navigate NavigateTo:param withFromClassName:[self.visibleViewController class]];
    }
    [self pushViewController:vc animated:NO];
    
}


/**
 pop页面
 
 @param pageName 目标页面类名
 @param param 所传参数
 */
-(void)goBackWithPageName:(NSString *)pageName withParam:(NSDictionary *)param{
    NSLog(@"%@ ------- %s", param, __func__);
    Class c=[self.visibleViewController class];
    //UIViewController *control=[(UIViewController *)[NSClassFromString(name) alloc] initWithNibName:name bundle:nil];
    Class aimClass = NSClassFromString(pageName);
    UIViewController *vc;
    if (pageName.length > 0) {
//        返回导航控制器中指定控制器
        for (__strong UIViewController *vc in self.viewControllers) {
            if ([vc isKindOfClass:aimClass]) {
                vc = vc;
                [self popToViewController:vc animated:NO];
            }
        }
    }else{
        vc = self.visibleViewController;
        [self popViewControllerAnimated:NO];
    }
    //传值
    if([vc conformsToProtocol:@protocol(INavigateParam)]){
        id<INavigateParam> navigate=(id<INavigateParam>)vc;
        [navigate NavigateBack:param withFromClassName:c];
    }
}

-(void)navigateToWithPageName:(NSString *)name{
    //    bi_event_EnterPage *event = [[bi_event_EnterPage alloc]init];
    //    event.m_PageID = name;
    //    [event log];
    //    [kGlobalValue.m_AppDelegatew resetNavigatePostionToOrigin];
    Class aimClass = NSClassFromString(name);
    UIViewController *vc = [[aimClass alloc]init];
    [self pushViewController:vc animated:NO];
}

-(void)goBack{
    Class c=[self.visibleViewController class];
    //    bi_event_ExitPage *event = [[bi_event_ExitPage alloc]init];
    //    event.m_PageID = NSStringFromClass(c);
    //    [event log];
    [self popViewControllerAnimated:NO];
}

@end
