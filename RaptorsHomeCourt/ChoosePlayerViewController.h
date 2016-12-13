//
//  ChoosePlayerViewController.h
//  RaptorsHomeCourt
//
//  Created by Xcode User on 2016-12-13.
//  Copyright © 2016 Xcode User. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChoosePlayerViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    NSArray *listData;
    NSArray *siteData;
    NSArray *imageData;
}
@property (nonatomic,strong) NSArray *listData;
@property (nonatomic,strong) NSArray *siteData;
@property (nonatomic,strong) NSArray *imageData;

@end
