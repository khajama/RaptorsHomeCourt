//
//  RegisterViewController.m
//  RaptorsHomeCourt
//
//  Created by Xcode User on 2016-11-28.
//  Copyright © 2016 Xcode User. All rights reserved.
//

#import "RegisterViewController.h"
#import "AppDelegate.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController
@synthesize tfRegisterUser, tfRegisterPassword, tfRegisterEmail, butRegister;


///////////////////////////////////////////////////////////////////////////
-(IBAction)addPerson:(id)sender
{
    AppDelegate *mainDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    Data *person = [[Data alloc] initWithData:tfRegisterUser.text thePassword:tfRegisterPassword.text theEmail:tfRegisterEmail.text];
    
    BOOL returnCode = [mainDelegate insertIntoLoginDatabase:person];
    
    NSString *returnMsg = @"Person Added";
    
    if(returnCode == NO)
        returnMsg = @"Person Add Failed";
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"SQLite Insert" message:returnMsg preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
    
    [alert addAction:ok];
    [self presentViewController:alert animated:YES completion:nil];
    
}

/* Not sure how to go back to the login page right after registering
 */
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint touchPoint = [touch locationInView:self.view];
    
    CGRect tableFrame = butRegister.frame;
    
    if(CGRectContainsPoint(tableFrame, touchPoint))
    {
        [self performSegueWithIdentifier:@"RegisterSegueToLogin" sender:self];
    }
}


-(IBAction)unwindToThisLoginViewController:(UIStoryboardSegue *)sender
{
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return NO;
}



///////////////////////////////////////////////////////////////////////////




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
