//
//  ViewPlayerViewController.h
//  RaptorsHomeCourt
//
//  Created by Xcode User on 2016-12-13.
//  Copyright © 2016 Xcode User. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewPlayerViewController : UIViewController<UIWebViewDelegate>
{
    IBOutlet UIWebView *webview;
    IBOutlet UIActivityIndicatorView *activity;
}

@property (nonatomic,strong)IBOutlet UIWebView *webview;
@property (nonatomic, strong)UIActivityIndicatorView *activity;

@end
