//
//  downLoad.m
//  downloadFile
//
//  Created by 李子怡 on 15-6-25.
//  Copyright (c) 2015年 李子怡. All rights reserved.
//

#import "downLoad.h"

@implementation downLoad


-(void)downloadFileWithUrl:(NSURL*)url completion:(void(^)(UIImage *image))completion  error:(void(^)(NSString *errorStr))errorStr
{
    
       dispatch_queue_t q = dispatch_queue_create("cn.itcast.download", DISPATCH_QUEUE_CONCURRENT);
    //异步方法
    dispatch_async(q, ^{
        
        NSLog(@"%@",[NSThread  currentThread]);
        //线程内部  执行方法;
        
        
        //从网络中下载图片
        NSURL *url = [NSURL URLWithString:@"http://i8.topit.me/8/c1/31/1142319854bdc31c18o.jpg"];
        //将图片转换为二进制数据
        NSData *imgData = [NSData dataWithContentsOfURL:url];
        //数据转换成图片
        UIImage *img = [UIImage imageWithData:imgData];
        
        //返回到主线程中
        dispatch_async(dispatch_get_main_queue(), ^{
        
            
            completion(img);
            errorStr([NSThread  description]);
            NSLog(@"%@",[img description]);
            UIImageView *imagev ;
            imagev.image = img;

         });
        
    });

    
    
//    dispatch_queue_t qe = dispatch_queue_create("cn.itcast.download", DISPATCH_QUEUE_CONCURRENT);
//    dispatch_async(qe, ^{
//        
//        
//        
//        
//    });


}
































@end
