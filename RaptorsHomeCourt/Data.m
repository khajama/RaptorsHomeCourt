//
//  Data.m
//  RaptorsHomeCourt
//
//  Created by Xcode User on 2016-11-17.
//  Copyright © 2016 Xcode User. All rights reserved.
//

#import "Data.h"

@implementation Data
@synthesize name, password;

-(id)initWithData:(NSString *)n thePassword:(NSString*)p {
    if(self = [super init])
    {
        [self setName:n];
        [self setPassword:p];
    }
    return self;
}
@end
