//
//  Data.m
//  RaptorsHomeCourt
//
//  Created by Xcode User on 2016-11-17.
//  Copyright © 2016 Xcode User. All rights reserved.
//

#import "Data.h"

@implementation Data
@synthesize user, password, email;

-(id)initWithData:(NSString *)u thePassword:(NSString*)p theEmail: (NSString *)e{
    if(self = [super init])
    {
        [self setUser:u];
        [self setPassword:p];
        [self setEmail:e];
    }
    return self;
}
@end
