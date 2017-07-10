//
//  ViewController.m
//  changeWebViewUserAgent
//
//  Created by ekhome on 17/7/10.
//  Copyright © 2017年 xiaofei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong)UIWebView *web;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.web];
    [self.web setFrame:self.view.frame];
    [self.web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http:www.baidu.com"]]];
    NSString *aa = [self.web stringByEvaluatingJavaScriptFromString:@"navigator.userAgent"];
    NSLog(@"-----------%@",aa);
}


- (UIWebView *)web {
	if(_web == nil) {
		_web = [[UIWebView alloc] init];
//        NSString *originUA = [_web stringByEvaluatingJavaScriptFromString:@"navigator.userAgent"];
//        NSString *newUA = [NSString stringWithFormat:@"%@ %@",originUA,@"your userAgent"];
//        NSDictionary *dictionary = @{@"UserAgent":newUA};
//        [[NSUserDefaults standardUserDefaults] registerDefaults:dictionary];
//        
//        NSString *title= [_web stringByEvaluatingJavaScriptFromString:@"document.title"];
//        NSLog(@"%@",title);
	}
	return _web;
}

@end
