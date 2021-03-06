//
//  ViewController.m
//  Manager
//
//  Created by hannah gaskins on 7/18/16.
//  Copyright © 2016 hannah gaskins. All rights reserved.
//

#import "ViewController.h"
#import "HotelsViewController.h"
#import "RoomsViewController.h"


@interface ViewController ()

@end

@implementation ViewController

-(void)loadView
{
    [super loadView];
    [self setupCustomLayout];
    [self.view setBackgroundColor:[UIColor whiteColor]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupViewController];
}

- (void)setupViewController
{
    [self.navigationItem setTitle:@"HotelManager"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)setupCustomLayout
{
    float navigationBarHeight = CGRectGetHeight(self.navigationController.navigationBar.frame);
    
    UIButton *browseButton = [[UIButton alloc]init];
    UIButton *bookButton = [[UIButton alloc]init];
    UIButton *lookupButton = [[UIButton alloc]init];
    
    [browseButton setTitle:@"Browse" forState:UIControlStateNormal];
    [bookButton setTitle:@"Book" forState:UIControlStateNormal];
    [lookupButton setTitle:@"Lookup" forState:UIControlStateNormal];
    
    [browseButton setBackgroundColor:[UIColor colorWithRed:1.0 green:1.0 blue:0.76 alpha:1.0]];
    [bookButton setBackgroundColor:[UIColor colorWithRed:1.0 green:0.91 blue:0.76 alpha:1.0]];
    [lookupButton setBackgroundColor:[UIColor colorWithRed:0.85 green:0.91 blue:0.76 alpha:1.0]];
    
    [browseButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [bookButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [lookupButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [browseButton setTranslatesAutoresizingMaskIntoConstraints:NO];
    [bookButton setTranslatesAutoresizingMaskIntoConstraints:NO];
    [lookupButton setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    NSLayoutConstraint *browseButtonLeading = [NSLayoutConstraint constraintWithItem:browseButton
                                                                           attribute:NSLayoutAttributeLeading
                                                                           relatedBy:NSLayoutRelationEqual
                                                                              toItem:self.view
                                                                           attribute:NSLayoutAttributeLeading
                                                                          multiplier:1.0 constant:0.0];
    
    NSLayoutConstraint *browseButtonTop = [NSLayoutConstraint constraintWithItem:browseButton
                                                                       attribute:NSLayoutAttributeTop
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:self.view
                                                                       attribute:NSLayoutAttributeTop
                                                                      multiplier:1.0
                                                                        constant:64.0];
    
    NSLayoutConstraint *browseButtonTrailing = [NSLayoutConstraint constraintWithItem:browseButton
                                                                            attribute:NSLayoutAttributeTrailing
                                                                            relatedBy:NSLayoutRelationEqual
                                                                               toItem:self.view
                                                                            attribute:NSLayoutAttributeTrailing
                                                                           multiplier:1.0
                                                                             constant:0.0];
    
    NSLayoutConstraint *bookButtonLeading = [NSLayoutConstraint constraintWithItem:bookButton
                                                                         attribute:NSLayoutAttributeLeading
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:self.view
                                                                         attribute:NSLayoutAttributeLeading
                                                                        multiplier:1.0
                                                                          constant:0.0];
    
    NSLayoutConstraint *bookButtonCenterY= [NSLayoutConstraint constraintWithItem:bookButton
                                                                        attribute:NSLayoutAttributeCenterY
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:self.view
                                                                        attribute:NSLayoutAttributeCenterY
                                                                       multiplier:1.0
                                                                         constant:navigationBarHeight / 1.4];
    
    NSLayoutConstraint *bookButtonTrailing = [NSLayoutConstraint constraintWithItem:bookButton
                                                                          attribute:NSLayoutAttributeTrailing
                                                                          relatedBy:NSLayoutRelationEqual
                                                                             toItem:self.view
                                                                          attribute:NSLayoutAttributeTrailing
                                                                         multiplier:1.0
                                                                           constant:0.0];
    
    NSLayoutConstraint *lookupButtonLeading = [NSLayoutConstraint constraintWithItem:lookupButton
                                                                           attribute:NSLayoutAttributeLeading
                                                                           relatedBy:NSLayoutRelationEqual
                                                                              toItem:self.view
                                                                           attribute:NSLayoutAttributeLeading
                                                                          multiplier:1.0
                                                                            constant:0.0];
    
    NSLayoutConstraint *lookupButtonBottom = [NSLayoutConstraint constraintWithItem:lookupButton
                                                                          attribute:NSLayoutAttributeBottom
                                                                          relatedBy:NSLayoutRelationEqual
                                                                             toItem:self.view
                                                                          attribute:NSLayoutAttributeBottom
                                                                         multiplier:1.0
                                                                           constant:0.0];
    
    NSLayoutConstraint *lookupButtonTrailing = [NSLayoutConstraint constraintWithItem:lookupButton
                                                                            attribute:NSLayoutAttributeTrailing
                                                                            relatedBy:NSLayoutRelationEqual
                                                                               toItem:self.view
                                                                            attribute:NSLayoutAttributeTrailing
                                                                           multiplier:1.0
                                                                             constant:0.0];
    
    // Setup height
    NSLayoutConstraint *bookButtonHeight = [NSLayoutConstraint constraintWithItem:bookButton
                                                                        attribute:NSLayoutAttributeHeight
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:self.view
                                                                        attribute:NSLayoutAttributeHeight
                                                                       multiplier:0.3
                                                                         constant:0.0];
    
    NSLayoutConstraint *browseButtonHeight = [NSLayoutConstraint constraintWithItem:browseButton
                                                                          attribute:NSLayoutAttributeHeight
                                                                          relatedBy:NSLayoutRelationEqual
                                                                             toItem:bookButton
                                                                          attribute:NSLayoutAttributeHeight
                                                                         multiplier:1.0
                                                                           constant:0.0];
    
    NSLayoutConstraint *lookupButtonHeight = [NSLayoutConstraint constraintWithItem:lookupButton
                                                                          attribute:NSLayoutAttributeHeight
                                                                          relatedBy:NSLayoutRelationEqual
                                                                             toItem:bookButton
                                                                          attribute:NSLayoutAttributeHeight
                                                                         multiplier:1.0
                                                                           constant:0.0];
    
    [self.view addSubview:browseButton];
    [self.view addSubview:bookButton];
    [self.view addSubview:lookupButton];
    
    // Activate constraints.
    browseButtonLeading.active = YES;
    browseButtonTop.active = YES;
    browseButtonTrailing.active = YES;
    
    bookButtonLeading.active = YES;
    bookButtonCenterY.active = YES;
    bookButtonTrailing.active = YES;
    
    lookupButtonLeading.active = YES;
    lookupButtonBottom.active = YES;
    lookupButtonTrailing.active = YES;
    
    // ...
    bookButtonHeight.active = YES;
    browseButtonHeight.active = YES;
    lookupButtonHeight.active = YES;
    
    // ... Setup actions.
    [browseButton addTarget:self action:@selector(browseButtonSelected:) forControlEvents:UIControlEventTouchUpInside];
    [bookButton addTarget:self action:@selector(bookButtonSelected:) forControlEvents:UIControlEventTouchUpInside];
    [lookupButton addTarget:self action:@selector(lookupButtonSelected:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)browseButtonSelected:(UIButton *)sender
{
    [self.navigationController pushViewController:[[HotelsViewController alloc]init] animated:YES];
}

- (void)bookButtonSelected:(UIButton *)sender
{
    [self.navigationController pushViewController:[[RoomsViewController alloc]init] animated:YES];
}

- (void)lookupButtonSelected:(UIButton *)sender
{
    NSLog(@"Lookup...");
}


@end
