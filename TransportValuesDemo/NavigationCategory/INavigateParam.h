//
//  INavigateParam.h
//  GtIc
//
//  Created by  YekMobile on 13-1-21.
//
//

@protocol INavigateParam <NSObject>
@required

/**
 接收顺传数据

 @param param 所传参数
 @param c 来源页面类名
 */
-(void)NavigateTo:(NSDictionary *)param withFromClassName:(Class)c;

/**
 接收逆传数据

 @param param 所传参数
 @param c 来源页面类名
 */
-(void)NavigateBack:(NSDictionary *)param withFromClassName:(Class)c;
@end

