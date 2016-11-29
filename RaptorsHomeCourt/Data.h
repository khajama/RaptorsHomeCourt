//
//  Data.h
//  RaptorsHomeCourt
//
//  Created by Xcode User on 2016-11-17.
//  Copyright © 2016 Xcode User. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Data : NSObject
{
    NSString *user;
    NSString *password;
    NSString *email;
}

@property (nonatomic, strong) NSString *user;
@property (nonatomic, strong) NSString *password;
@property (nonatomic, strong) NSString *email;

-(id)initWithData:(NSString *)u thePassword: (NSString *)p theEmail: (NSString *)e;

@end
