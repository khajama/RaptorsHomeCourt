//
//  LoginViewController.h
//  RaptorsHomeCourt
//
//  Created by Xcode User on 2016-11-10.
//  Copyright © 2016 Xcode User. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController<UITextFieldDelegate>
{
    IBOutlet UITextField *tfUser;
    IBOutlet UITextField *tfPassword;
}

@property (nonatomic, strong) IBOutlet UITextField *tfUser;
@property (nonatomic, strong) IBOutlet UITextField *tfPassword;


@end
