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

@property (strong, nonatomic) LGSideMenuController *sideMenu;

@end

@implementation ParentViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
//    
//    self.lib = [LibraryClass sharedInstance];
//    
//    UIApplication *application = [UIApplication sharedApplication];
//    
//    UIWindow *window = [application keyWindow];
//    
//    self.sideMenu = (LGSideMenuController *)window.rootViewController;

}

//- (void)openSideMenuWithCompletion:(void(^)(void))completion
//{    
//    [self.sideMenu showLeftViewAnimated:YES completionHandler:^{
//        if(completion)
//            completion();
//    }];
//}
//
//- (void)printSideMenuStatus
//{
//    NSLog(@"printSideMenuStatus : %zd", self.sideMenu.isLeftViewShowing);
//    
//    NSLog(@"sideMenu : %@", self.sideMenu);
//}



@end
