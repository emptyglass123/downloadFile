//
//  ViewController.m
//  downloadFile
//
//  Created by 李子怡 on 15-6-25.
//  Copyright (c) 2015年 李子怡. All rights reserved.
//

#import "ViewController.h"
#import "downLoad.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.view.backgroundColor = [UIColor  grayColor];
    
    
    
    //添加第一个按钮
    UIButton *btn1=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    [btn1 setTitle:@"Click Me" forState:UIControlStateNormal];
    
    [btn1 setTranslatesAutoresizingMaskIntoConstraints:NO];
    btn1.backgroundColor = [UIColor  redColor];
    //标记是否自动布局
    [self.view addSubview:btn1];
    
    
    //添加第二个按钮
    UIButton *btn2=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    [btn2 setTitle:@"Click Me Please" forState:UIControlStateNormal];
    
    [btn2 setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    btn2.backgroundColor = [UIColor  greenColor];
    //标记是否自动布局
    [self.view addSubview:btn2];
    
    
    
    NSDictionary *views=NSDictionaryOfVariableBindings(btn1,btn2);
    
    
    
    
    
    
    [self.view addConstraints:
     // H=Horizontal，水平方向，同时设定控件宽度
     // X= 0, 宽度 = 200
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-(==20)-[btn1(200)]"
      
                                             options:0
                                             metrics:nil
                                             views:views]];
    
    [self.view addConstraints:
     // V=Vertical,垂直方向，同时设定控件高度
     // Y= 60 高度 = 30
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-(==60)-[btn1(30)]"
                                             options:0
                                             metrics:nil
                                             views:views]];
    
    [self.view addConstraints:
     
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-(30)-[btn2(==200)]"
                                             options:0
                                             metrics:nil
                                             views:views]];
    
    
    [self.view addConstraints:
     
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-(>=120)-[btn2(==btn1)]"                             options:0
      
                                             metrics:nil
      
                                               views:views] ];
    
    //注意AddConstraints和AddConstraint之间的区别，一个添加的参数是(NSArray *)，一个是(NSLayoutConstraint *)
    
    [self.view addConstraint:
     [NSLayoutConstraint constraintWithItem:btn2
      
                                  attribute:NSLayoutAttributeLeft
      
                                  relatedBy:NSLayoutRelationEqual
      
                                     toItem:btn1
      
                                  attribute:NSLayoutAttributeRight
      
                                 multiplier:9
      
                                   constant:200]];
//
//    [self.view addConstraint:
//     
//     [NSLayoutConstraint constraintWithItem:btn2
//      
//                                  attribute:NSLayoutAttributeTop
//      
//      //要设定的属性
//      
//                                  relatedBy:NSLayoutRelationGreaterThanOrEqual
//      
//      //大于还是小于相对的View的值
//      
//                                     toItem:btn1
//      
//      //相对于某个View或者控件
//      
//                                  attribute:NSLayoutAttributeTop
//      
//      //指定要设定的关联View的属性
//      
//                                 multiplier:1   //因子值
//      
//                                   constant:0]];    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
 /**
  
  UIImageView *iView = [[UIImageView  alloc] init] ;
  iView.frame = CGRectMake(50, 80, 200, 200);
  iView.backgroundColor = [UIColor greenColor];
  [self.view addSubview:iView];
  
  
  
  UILabel *LAB = [[UILabel alloc] initWithFrame:CGRectMake(10, 20, 200, 30)];
  [self.view addSubview:LAB];
  LAB.backgroundColor = [UIColor redColor];
  
  downLoad *downloadImage = [[downLoad  alloc] init];
  
  
  
  [downloadImage downloadFileWithUrl:[NSURL URLWithString:@"http://i8.topit.me/8/c1/31/1142319854bdc31c18o.jpg"] completion:^(UIImage *image) {
  
  
  iView.image = image;
  
  
  } error:^(NSString *errorStr) {
  
  }];
  
  
  
  //    [downloadImage downloadFileWithUrl:[NSURL URLWithString:@"http://i8.topit.me/8/c1/31/1142319854bdc31c18o.jpg"] completion:^(UIImage *image) {
  //
  //
  //        iView.image = image;
  //
  //    } error:^(NSString *errorStr) {
  //
  //        LAB.text = errorStr;
  //
  //    }];
 
  
  */
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
