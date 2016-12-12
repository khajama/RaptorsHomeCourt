//
//  MenuViewController.m
//  RaptorsHomeCourt
//
//  Created by Xcode User on 2016-11-29.
//  Copyright © 2016 Xcode User. All rights reserved.
//

#import "MenuViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)actionHover:(id)sender{
    UIButton *button = (UIButton *)sender;
    //button.selected = !button.selected;
    button.highlighted = !button.highlighted;
    
    [button setImage:[UIImage imageNamed:@"enter-hover.png"]
            forState:UIControlStateHighlighted];
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
