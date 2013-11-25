//
//  CheckNetWork.m
//  wirelessuda
//
//  Created by Mac on 13-11-20.
//  Copyright (c) 2013年 苏州大学信息化建设与管理中心. All rights reserved.
//

#import "CheckNetWork.h"

@implementation CheckNetWork

+(NSString *)getNetWorkStatus
{
    NSString *status;
    //ASIHTTPRequest *request=[ASIHTTPRequest requestWithURL:[NSURL URLWithString:@"http://wg.suda.edu.cn/indexm.asp"]];
    ASIFormDataRequest *formDataRequest=[ASIFormDataRequest requestWithURL:[NSURL URLWithString:@"http://wg.suda.edu.cn/indexm.asp"]];
    [formDataRequest startSynchronous];
    NSData *responseData = [formDataRequest responseData];
    if ([responseData isEqualToData:nil]) {
        status=@"1";
    }else{
        status=@"0";
    }
    return status;
}

@end
