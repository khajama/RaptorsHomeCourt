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
    NSString *name;
    NSString *password;
}

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *password;

-(id)initWithData:(NSString *)n thePassword: (NSString *)p;

@end
