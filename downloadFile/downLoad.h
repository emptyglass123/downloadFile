//
//  downLoad.h
//  downloadFile
//
//  Created by 李子怡 on 15-6-25.
//  Copyright (c) 2015年 李子怡. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface downLoad : NSObject


//-(void)downloadFileWithUrl:(NSURL*)url completion:(void(^)(UIImage *image))completion;


-(void)downloadFileWithUrl:(NSURL*)url completion:(void(^)(UIImage *image))completion  error:(void(^)(NSString *errorStr))errorStr;
@end
