# XTRequest
####This is a package of AFNetworking And ASIHTTPRequest . Both in sync and async .

在AFNetworking 和 ASIHTTPRequest封装了一层 . 一个比较简单的框架 , 初衷是方便处理一切和请求有关的需求 .
> * 同步/异步 . get/post . 基本能应对一切app需求. 
* api比较容易扩展
* 统一参数格式.

* url , 请求地址
* parameters , 参数字典. 无论get/post统一传字典即可
* hud , 是否需要显示activityView
* METHOD_REQUEST , 同步中的模式 (get/post).



1.网络状态
```
+ (void)netWorkStatus ;
```
---
2.异步 get / post
```
+ (void)GETWithUrl:(NSString *)url
               hud:(BOOL)hud
        parameters:(NSDictionary *)dict
           success:(void (^)(id json))success
              fail:(void (^)())fail ;
```
 ```
+ (void)POSTWithUrl:(NSString *)url
                hud:(BOOL)hud
         parameters:(NSDictionary *)dict
            success:(void (^)(id json))success
               fail:(void (^)())fail ;
```
---
3.同步 get / post
```
+ (ResultParsered *)getJsonWithURLstr:(NSString *)urlstr
                       AndWithParamer:(NSDictionary *)dict
                          AndWithMode:(METHOD_REQUEST)mode ;
```
