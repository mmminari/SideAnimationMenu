//
//  ParentViewController.h
//  SideAnimationMenu
//
//  Created by 김민아 on 2017. 1. 13..
//  Copyright © 2017년 김민아. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LibraryClass.h"

@interface ParentViewController : UIViewController

@property (strong, nonatomic) LibraryClass *lib;

- (void)openSideMenuWithCompletion:(void(^)(void))completion;


@end
