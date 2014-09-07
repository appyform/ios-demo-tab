//
//  MainViewController.m
//  AppyFormDemo
//
//  Created by Daniel Lam on 18/08/2014.
//  Copyright (c) 2014 AppyForm. All rights reserved.
//


#import "MainViewController.h"
#import "FeedbackViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor colorWithRed:68.0/255.0 green:189.0/255.0 blue:249.0/255.0 alpha:1];
    
    UIView *titleBgView = [[UIView alloc] init];
    titleBgView.translatesAutoresizingMaskIntoConstraints = NO;
    titleBgView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview: titleBgView];

    UIImageView *titleIV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"title"]];
    titleIV.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview: titleIV];

    UILabel *textLabel = [[UILabel alloc] init];
    textLabel.translatesAutoresizingMaskIntoConstraints = NO;
    textLabel.textColor = [UIColor whiteColor];
    textLabel.preferredMaxLayoutWidth = 270.0;
    textLabel.numberOfLines = 0;
    textLabel.text = @"This app demonstrates how you can display a feedback form using UITabBarController.";
    [self.view addSubview: textLabel];

    NSArray *allConstraints = @[
                                // Set title background to be on top.
                                [NSLayoutConstraint constraintWithItem: titleBgView
                                                             attribute: NSLayoutAttributeTop
                                                             relatedBy: NSLayoutRelationEqual
                                                                toItem: self.view
                                                             attribute: NSLayoutAttributeTop
                                                            multiplier: 1.0
                                                              constant: 0
                                 ],
                                [NSLayoutConstraint constraintWithItem: titleBgView
                                                             attribute: NSLayoutAttributeBottom
                                                             relatedBy: NSLayoutRelationEqual
                                                                toItem: self.view
                                                             attribute: NSLayoutAttributeTop
                                                            multiplier: 1.0
                                                              constant: 80
                                 ],
                                [NSLayoutConstraint constraintWithItem: titleBgView
                                                             attribute: NSLayoutAttributeLeft
                                                             relatedBy: NSLayoutRelationEqual
                                                                toItem: self.view
                                                             attribute: NSLayoutAttributeLeft
                                                            multiplier: 1.0
                                                              constant: 0
                                 ],
                                [NSLayoutConstraint constraintWithItem: titleBgView
                                                             attribute: NSLayoutAttributeRight
                                                             relatedBy: NSLayoutRelationEqual
                                                                toItem: self.view
                                                             attribute: NSLayoutAttributeRight
                                                            multiplier: 1.0
                                                              constant: 0
                                 ],
                                // Set title to be in center.
                                [NSLayoutConstraint constraintWithItem: titleIV
                                                             attribute: NSLayoutAttributeCenterX
                                                             relatedBy: NSLayoutRelationEqual
                                                                toItem: self.view
                                                             attribute: NSLayoutAttributeCenterX
                                                            multiplier: 1.0
                                                              constant: 0
                                 ],
                                [NSLayoutConstraint constraintWithItem: titleIV
                                                             attribute: NSLayoutAttributeCenterY
                                                             relatedBy: NSLayoutRelationEqual
                                                                toItem: titleBgView
                                                             attribute: NSLayoutAttributeCenterY
                                                            multiplier: 1.2
                                                              constant: 0
                                 ],
                                // Set label position.
                                [NSLayoutConstraint constraintWithItem: textLabel
                                                             attribute: NSLayoutAttributeTop
                                                             relatedBy: NSLayoutRelationEqual
                                                                toItem: titleBgView
                                                             attribute: NSLayoutAttributeBottom
                                                            multiplier: 1.0
                                                              constant: 20
                                 ],
                                [NSLayoutConstraint constraintWithItem: textLabel
                                                             attribute: NSLayoutAttributeCenterX
                                                             relatedBy: NSLayoutRelationEqual
                                                                toItem: self.view
                                                             attribute: NSLayoutAttributeCenterX
                                                            multiplier: 1.0
                                                              constant: 0
                                 ]
                                ];
    [self.view addConstraints: allConstraints];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
