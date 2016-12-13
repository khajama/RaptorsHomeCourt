//
//  ViewPlayerViewController.m
//  RaptorsHomeCourt
//
//  Created by Xcode User on 2016-12-13.
//  Copyright © 2016 Xcode User. All rights reserved.
//

#import "ViewPlayerViewController.h"
#import "AppDelegate.h"

@interface ViewPlayerViewController ()

@end

@implementation ViewPlayerViewController
@synthesize activity, webview;

-(void)webViewDidStartLoad:(UIWebView *)webView
{
    [activity setHidden:NO];
    [activity startAnimating];
}

-(void)webViewDidFinishLoad:(UIWebView *)webView
{
    [activity setHidden:YES];
    [activity startAnimating];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    AppDelegate *mainDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSURL *urlAddress = [NSURL URLWithString:mainDelegate.selectedURL];
    
    NSURLRequest *url = [NSURLRequest requestWithURL:urlAddress];
    
    [webview loadRequest:url];
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
