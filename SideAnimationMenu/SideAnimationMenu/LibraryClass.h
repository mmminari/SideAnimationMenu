//
//  LibraryClass.h
//  SideAnimationMenu
//
//  Created by 김민아 on 2016. 12. 27..
//  Copyright © 2016년 김민아. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LGSideMenuController.h"


@interface LibraryClass : NSObject

+ (instancetype)sharedInstance;
@property (strong, nonatomic) LGSideMenuController *sideMenu;


@end
