//
//  YHLViewController.m
//  YHLWebViewController
//
//  Created by yuhanle on 02/18/2016.
//  Copyright (c) 2016 yuhanle. All rights reserved.
//

#import "YHLViewController.h"
#import "YHLWebViewController.h"

#define UIColorFromHexRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@interface YHLViewController ()

@end

@implementation YHLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.barTintColor = UIColorFromHexRGB(0X151515);
    [self.navigationController.navigationBar setTitleTextAttributes:@{
                                                                      NSForegroundColorAttributeName:[UIColor whiteColor]
                                                                      }];
}

- (IBAction)buttonClick:(UIButton *)sender {
    
    NSString* urlStr = @"https://baidu.com";
    YHLWebViewController* webViewController = [[YHLWebViewController alloc] initWithUrl:[NSURL URLWithString:urlStr]];
    [self.navigationController pushViewController:webViewController animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
