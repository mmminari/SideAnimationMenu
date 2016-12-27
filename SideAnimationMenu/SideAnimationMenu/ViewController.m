//
//  ViewController.m
//  SideAnimationMenu
//
//  Created by 김민아 on 2016. 12. 14..
//  Copyright © 2016년 김민아. All rights reserved.
//

#import "ViewController.h"
#import "LeftMenuViewController.h"
#import <LGSideMenuController/LGSideMenuController.h>
#import "BaseViewController.h"

@interface ViewController () <UISearchBarDelegate>
@property (weak, nonatomic) IBOutlet UILabel *lbSearch;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (strong, nonatomic) LGSideMenuController *sideMenu;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.searchBar.delegate = self;
    
}

#pragma mark - User Action
- (IBAction)touchedButton:(UIButton *)sender
{
    [self.sideMenu showLeftViewAnimated:YES completionHandler:nil];
}


#pragma mark - UISearchBarDelegate


- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    [searchBar resignFirstResponder];

    self.lbSearch.text = searchBar.text;
}





@end
