//
//  ZFBaoYang.m
//  养车博士
//
//  Created by froda on 15/4/22.
//  Copyright (c) 2015年 froda. All rights reserved.
//

#import "ZFBaoyang.h"

@implementation ZFBaoyang
- (instancetype)initWithDict:(NSDictionary *)dict{
    if (self = [super init]){
        self.storeName = dict[@"storeName"];
        self.storeAdress = dict[@"storeAdress"];
        self.storeStarRank = dict[@"storeStarRank"];
        self.storeTechRank = dict[@"storeTechRank"];
        self.storeArea = dict[@"storeArea"];
    }
    return self;
}

+ (instancetype)baoyangWithDict:(NSDictionary *)dict{
    return [[self alloc] initWithDict:dict];
}

- (void)netRequestMethod{
    //1.创建URL
    NSURL *url = [NSURL URLWithString:@"www.baidu.com"];
    //2.通过URL创建网络请求
    NSURLRequest *request = [[NSURLRequest alloc]initWithURL:url cachePolicy:NSURLRequestReloadRevalidatingCacheData timeoutInterval:15];
    //3.建立连接
    NSURLConnection *connection = [[NSURLConnection alloc]initWithRequest:request delegate:self];
    //4.连接服务器
    [connection start];
}
#pragma mark 异步请求的代理方法
//接收到服务器回应的时候调用此方法
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    NSHTTPURLResponse *res = (NSHTTPURLResponse *)response;
    NSLog(@"%@",[res allHeaderFields]);
    //self.receiveData = [NSMutableData data];
}
//接收到服务器传输数据的时候调用，此方法根据数据大小执行若干次
-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    //[self.receiveData appendData:data];
}
//数据传完之后调用此方法,此方法用于处理请求的数据
-(void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    //NSString *receiveStr = [[NSString alloc]initWithData:self.receiveData encoding:NSUTF8StringEncoding];
    //NSLog(@"%@",receiveStr);
}
//网络请求过程中，出现任何错误（断网，连接超时等）会进入此方法
-(void)connection:(NSURLConnection *)connection
 didFailWithError:(NSError *)error{
    NSLog(@"网络出错！");
}


@end
