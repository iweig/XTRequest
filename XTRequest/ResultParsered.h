//
//  AppDelegate.m
//  XTRequest
//
//  Created by TuTu on 15/11/12.
//  Copyright © 2015年 teason. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ResultParsered : NSObject

@property (nonatomic)           NSInteger       errCode     ;
@property (nonatomic,copy)      NSString        *message    ;
@property (nonatomic,strong)    NSDictionary    *info       ;

- (instancetype)initWithDic:(NSDictionary *)dict            ;

@end
