//
//  AppDelegate.h
//  RaptorsHomeCourt
//
//  Created by Xcode User on 2016-11-10.
//  Copyright © 2016 Xcode User. All rights reserved.
//

#import <UIKit/UIKit.h>

//Import all the header files
#import "ViewController.h"
#import "LoginViewController.h"
#import "SectionSelectViewController.h"
#import "SeatSelectViewController.h"
#import "HomeViewController.h"
#import "RegisterViewController.h"

#import "Data.h"

#define ANIMATION_DURATION 1.0
#define FORWARD 0
#define BACKWARD 1

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    //All of the pages it will flip to
    ViewController *startVC;
    LoginViewController *loginVC;
    SectionSelectViewController *sectionVC;
    SeatSelectViewController *seatVC;
    HomeViewController *homeVC;
    RegisterViewController *registerVC;
    NSString *selectedURL;
    
    //Login Database
    NSString *databaseName;
    NSString *databasePath;
    NSMutableArray *people;
    
}
@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) ViewController *startVC;
@property (strong, nonatomic) LoginViewController *loginVC;
@property (strong, nonatomic) SectionSelectViewController *sectionVC;
@property (strong, nonatomic) SeatSelectViewController *seatVC;
@property (strong, nonatomic) HomeViewController *homeVC;
@property (strong, nonatomic) RegisterViewController *registerVC;
@property (strong, nonatomic) NSString *selectedURL;

@property (strong, nonatomic) NSString *databaseName;
@property (strong, nonatomic) NSString *databasePath;
@property (strong, nonatomic) NSMutableArray *people;

/* Gotta change these after we set every animation
-(void)flipToChooseSite;
-(void)flipToChooseSiteHome;
-(void)flipToViewSite;
-(void)flipToViewSiteHome;
*/

-(void)readDataFromLoginDatabase;
-(void)checkAndCreateLoginDatabase;
-(BOOL)insertIntoLoginDatabase:(Data *)person;

@end

