//
//  ViewController.m
//  XTRequest
//
//  Created by TuTu on 15/11/12.
//  Copyright © 2015年 teason. All rights reserved.
//

#import "ViewController.h"
#import "XTRequest.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor yellowColor] ;
}


- (IBAction)btClicked:(id)sender
{
    NSMutableDictionary *paramer = [NSMutableDictionary dictionary] ;
    [paramer setObject:@0
                forKey:@"token"] ;
    [paramer setObject:@"我"
                forKey:@"t_content"] ;
    [paramer setObject:[NSNumber numberWithInt:1]
                forKey:@"page"] ;
    [paramer setObject:[NSNumber numberWithInt:10]
                forKey:@"count"] ;

    
    [XTRequest GETWithUrl:@"http://www.weather.com.cn/data/sk/101010100.html"
                      hud:YES
               parameters:paramer
                  success:^(id json) {
                      NSLog(@"json : %@",json) ;
                   } fail:^{
                      NSLog(@"fail") ;
    }] ;
}

- (IBAction)btSyncClick:(id)sender
{
    
    [XTRequest getJsonWithURLstr:@"http://www.weather.com.cn/data/sk/101010100.html"
                  AndWithParamer:nil
                     AndWithMode:GET_MODE] ;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
