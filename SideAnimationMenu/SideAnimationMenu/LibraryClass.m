//
//  LibraryClass.m
//  SideAnimationMenu
//
//  Created by 김민아 on 2016. 12. 27..
//  Copyright © 2016년 김민아. All rights reserved.
//

#import "LibraryClass.h"

@implementation LibraryClass


+ (instancetype)sharedInstance
{
    static LibraryClass *_sharedInstance = nil;
    
    static dispatch_once_t oncePredicate;
    
    dispatch_once(&oncePredicate, ^{
        _sharedInstance = [[LibraryClass alloc] init];
        
    });
    
    return _sharedInstance;
}

@end
