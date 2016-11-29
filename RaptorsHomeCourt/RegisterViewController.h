//
//  RegisterViewController.h
//  RaptorsHomeCourt
//
//  Created by Xcode User on 2016-11-28.
//  Copyright © 2016 Xcode User. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegisterViewController : UIViewController<UITextFieldDelegate>
{
    IBOutlet UITextField *tfRegisterUser;
    IBOutlet UITextField *tfRegisterPassword;
    IBOutlet UITextField *tfRegisterEmail;
    IBOutlet UIButton *butRegister;
}

@property (nonatomic, strong) IBOutlet UITextField *tfRegisterUser;
@property (nonatomic, strong) IBOutlet UITextField *tfRegisterPassword;
@property (nonatomic, strong) IBOutlet UITextField *tfRegisterEmail;
@property (nonatomic, strong) IBOutlet UIButton *butRegister;

@end
