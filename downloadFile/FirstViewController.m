//
//  FirstViewController.m
//  downloadFile
//
//  Created by 李子怡 on 15-6-26.
//  Copyright (c) 2015年 李子怡. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
@interface FirstViewController ()
@property(nonatomic,strong)UILabel * showLabel;
@end

@implementation FirstViewController
@synthesize showLabel;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    SecondViewController *tfVC = [[SecondViewController alloc] init] ;
    
    [tfVC returnText:^(NSString *showText) {
        self.showLabel.text = showText;
    }];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
