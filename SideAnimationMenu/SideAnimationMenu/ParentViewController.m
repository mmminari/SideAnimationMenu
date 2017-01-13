//
//  ParentViewController.m
//  SideAnimationMenu
//
//  Created by 김민아 on 2017. 1. 13..
//  Copyright © 2017년 김민아. All rights reserved.
//

#import "ParentViewController.h"
#import "LGSideMenuController.h"


@interface ParentViewController ()

@end

@implementation ParentViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.lib = [LibraryClass sharedInstance];


}

- (void)openSideMenuWithCompletion:(void(^)(void))completion
{
    UIApplication *application = [UIApplication sharedApplication];
    
    UIWindow *window = [application keyWindow];
    
    LGSideMenuController *sideMenu = (LGSideMenuController *)window.rootViewController;
    
    [sideMenu showLeftViewAnimated:YES completionHandler:^{
        if(completion)
            completion();
    }];
}



@end
