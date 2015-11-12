//
//  AppDelegate.m
//  XTRequest
//
//  Created by TuTu on 15/11/12.
//  Copyright © 2015年 teason. All rights reserved.
//

#import "ResultParsered.h"


@implementation ResultParsered

- (instancetype)initWithDic:(NSDictionary *)dict
{
    self = [super init];
    if (self) {
        _errCode = [[dict objectForKey:@"err_code"] intValue] ;
        
        if (_errCode == 10002)
        {
            // token失效
//            [CommonFunc exitLog] ;
        }
        
        _message = [dict objectForKey:@"message"] ;
        _info    = [dict objectForKey:@"info"] ;
    }
//    NSLog(@"errCode : %@",@(_errCode)) ;
//    NSLog(@"message : %@",_message) ;
//    NSLog(@"info    : %@",_info) ;
    
    return self;
}

@end
