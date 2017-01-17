//
//  ViewController.m
//  SideAnimationMenu
//
//  Created by 김민아 on 2016. 12. 14..
//  Copyright © 2016년 김민아. All rights reserved.
//

#import "ViewController.h"
#import "LeftMenuViewController.h"
#import "BaseViewController.h"
#import "SecondViewController.h"

@interface ViewController () <UISearchBarDelegate>
@property (weak, nonatomic) IBOutlet UILabel *lbSearch;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

@property (assign, nonatomic) NSInteger type;

@end

@implementation ViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    [self setUp];
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.searchBar.delegate = self;
    
    self.navigationController.navigationBarHidden = YES;
    
}

#pragma mark - User Action

- (IBAction)touchedButton:(UIButton *)sender
{
//    if(self.sideMenu == nil)
//    {
//        UIApplication *application = [UIApplication sharedApplication];
//        
//        UIWindow *window = [application keyWindow];
//        
//        self.sideMenu = (LGSideMenuController *)window.rootViewController;
//    }
//    
//    [self.sideMenu showLeftViewAnimated:YES completionHandler:nil];
    
    [self showLeftViewAnimated:YES completionHandler:nil];
}

- (IBAction)touchedMoveToNextView:(UIButton *)sender
{
    SecondViewController *secondVC = [self.storyboard instantiateViewControllerWithIdentifier:@"stid-secondVC"];
    
    NSLog(@"navigationController :%@", self.navigationController);
    
    [self.navigationController pushViewController:secondVC animated:YES];
    
}

#pragma mark - UISearchBarDelegate


- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    [searchBar resignFirstResponder];

    self.lbSearch.text = searchBar.text;
}

#pragma mark - Init

- (void)setUp
{
    LeftMenuViewController *leftVC = [[LeftMenuViewController alloc]initWithNibName:@"LeftMenuViewController" bundle:nil];
    
    BaseViewController *baseVC = [[BaseViewController alloc]initWithNibName:@"BaseViewController" bundle:nil];
    
    baseVC.sideMenu = self;
    
    self.rootViewController = baseVC;
    self.leftViewController = leftVC;
    self.leftViewWidth = 250.0f;
    self.leftViewBackgroundColor = [UIColor colorWithRed:0.5 green:0.6 blue:0.5 alpha:0.9];

    self.leftViewPresentationStyle = LGSideMenuPresentationStyleSlideAbove;
}


@end
