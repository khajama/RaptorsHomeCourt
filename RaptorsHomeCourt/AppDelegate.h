//
//  AppDelegate.h
//  RaptorsHomeCourt
//
//  Created by Xcode User on 2016-11-10.
//  Copyright © 2016 Xcode User. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "ChoosePlayerViewController.h"
#import "ViewPlayerViewController.h"

#define ANIMATION_DURATION 1.0

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    ViewController *homeVC;
    ChoosePlayerViewController *chooseVC;
    ViewPlayerViewController *viewVC;
    
    NSString *selectedURL;
    
}

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) ViewController *homeVC;
@property (strong, nonatomic) ChoosePlayerViewController *chooseVC;
@property (strong, nonatomic) ViewPlayerViewController *viewVC;
@property (strong, nonatomic) NSString *selectedURL;



@end

