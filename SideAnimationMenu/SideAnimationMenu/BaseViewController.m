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

@interface BaseViewController () <UISearchBarDelegate>
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (strong, nonatomic) LibraryClass *lib;
@property (weak, nonatomic) IBOutlet UILabel *lbSearchText;

@end

@implementation BaseViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.lib = [LibraryClass sharedInstance];
    
    self.searchBar.delegate = self;
    
}

#pragma mark - User Action

- (IBAction)touchedShowButton:(UIButton *)sender
{
    //[appDelegate.sideMenu showLeftViewAnimated:YES completionHandler:nil];
    
    self.lbSearchText.text = self.searchBar.text;
    
    UIApplication *application = [UIApplication sharedApplication];
    
    UIWindow *window = [application keyWindow];
    
    LGSideMenuController *sideMenu = (LGSideMenuController *)window.rootViewController;
    
    [sideMenu showLeftViewAnimated:YES completionHandler:nil];
    
    


}

#pragma mark - UISearchBarDelegate

- (void)searchBarTextDidEndEditing:(UISearchBar *)searchBar
{
    NSLog(@"searchBarTextDidEndEditing");
    
    self.lbSearchText.text = searchBar.text;
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    [searchBar resignFirstResponder];
    
    
}




@end
