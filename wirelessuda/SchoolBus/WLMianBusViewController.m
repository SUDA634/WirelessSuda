//
//  WLMianBusViewController.m
//  SchoolBusTest
//
//  Created by Tkey on 13-11-19.
//  Copyright (c) 2013年 TKey. All rights reserved.
//

#import "WLMianBusViewController.h"
#import "FlatUIKit.h"
#import "BusLineViewController.h"



@protocol buttonSelectDelegate <NSObject>
@optional
- (void)titleOfSelectButton:(NSString *)title;
@end

@implementation WLMianBusViewController

- (void)viewDidLoad
{

    [super viewDidLoad];
    [campus1 setBackgroundColor:[UIColor greenSeaColor]];
    [campus1 setTitleColor:[UIColor cloudsColor] forState:UIControlStateNormal];
    [campus1 setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];
    [campus1 addTarget:self action:@selector(campus1Press) forControlEvents:UIControlEventTouchUpInside];
    
    [campus2 setBackgroundColor:[UIColor greenSeaColor]];
    [campus2 setTitleColor:[UIColor cloudsColor] forState:UIControlStateNormal];
    [campus2 setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];
    [campus2 addTarget:self action:@selector(campus2Press) forControlEvents:UIControlEventTouchUpInside];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
    

}



- (void)campus1Press
{
    BusLineViewController *busLine = [[BusLineViewController alloc] init];
    [self setDelegate:busLine];
    [busLine titleOfSelectButton:@"Campus1"];
    [[self navigationController] pushViewController:busLine animated:YES];
    
}

- (void)campus2Press
{
    BusLineViewController *busLine = [[BusLineViewController alloc] init];
    [self setDelegate:busLine];
    [busLine titleOfSelectButton:@"Campus2"];
    [[self navigationController] pushViewController:busLine animated:YES];
}

@end

