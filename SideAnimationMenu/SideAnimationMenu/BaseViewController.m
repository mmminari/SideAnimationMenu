//
//  BaseViewController.m
//  SideAnimationMenu
//
//  Created by 김민아 on 2016. 12. 26..
//  Copyright © 2016년 김민아. All rights reserved.
//

#import "BaseViewController.h"
#import "LGSideMenuController.h"
#import "LibraryClass.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    

}

#pragma mark - User Action

- (IBAction)touchedShowButton:(UIButton *)sender
{
    
    [[LibraryClass sharedInstance].sideMenu showLeftViewAnimated:YES completionHandler:nil];

}



@end
