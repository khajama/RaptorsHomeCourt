//
//  AppDelegate.m
//  RaptorsHomeCourt
//
//  Created by Xcode User on 2016-11-10.
//  Copyright © 2016 Xcode User. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

@synthesize startVC, loginVC, sectionVC, seatVC, homeVC, registerVC, window, selectedURL;

/* Not sure what this does yet /////////////////////
 
-(void)setupAnimation:(NSInteger)direction
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:ANIMATION_DURATION];
    
    if(direction == FORWARD)
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:window cache:YES];
    else
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:window cache:NO];
}

-(void)swapViews:(UIView *)from goingTo:(UIView *)to
{
    [from removeFromSuperview];
    [self.window addSubview:to];
    [UIView commitAnimations];
 
}
*////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////
/* This is just to flip to every page
 */

-(void) flipToLoginFromBeginning
{
    LoginViewController *vc = [[LoginViewController alloc] initWithNibName:@"LoginViewController" bundle:nil];
    self.loginVC = vc;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.window cache:YES];
    [startVC.view removeFromSuperview];
    [self.window addSubview:loginVC.view];
    [UIView commitAnimations];
}

/*
 
 
-(void) flipToSettingsHome
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.window cache:NO];
    [settingsVC.view removeFromSuperview];
    [self.window addSubview:viewController.view];
    [UIView commitAnimations];
    settingsVC = nil;
}

-(void) flipToTeams
{
    TeamsViewController *vc = [[TeamsViewController alloc] initWithNibName:@"TeamsViewController" bundle:nil];
    self.teamsVC = vc;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:self.window cache:YES];
    [viewController.view removeFromSuperview];
    [self.window addSubview:teamsVC.view];
    [UIView commitAnimations];
}

-(void) flipToTeamsHome
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationTransition:UIViewAnimationTransitionCurlDown forView:self.window cache:NO];
    [teamsVC.view removeFromSuperview];
    [self.window addSubview:viewController.view];
    [UIView commitAnimations];
    teamsVC = nil;
}

*/
///////////////////////////////////////////////////////////////////////////////////////////////


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
