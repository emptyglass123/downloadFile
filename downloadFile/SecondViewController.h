//
//  SecondViewController.h
//  downloadFile
//
//  Created by 李子怡 on 15-6-26.
//  Copyright (c) 2015年 李子怡. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^ReturnTextBlock)(NSString *showText);
@interface SecondViewController : UIViewController

@property (nonatomic, copy) ReturnTextBlock returnTextBlock;

- (void)returnText:(ReturnTextBlock)block;

@end
