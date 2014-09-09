//
//  FeedbackViewController.m
//  AppyFormDemo
//
//  Created by Daniel Lam on 18/08/2014.
//  Copyright (c) 2014 AppyForm. All rights reserved.
//

#import "FeedbackViewController.h"

@interface FeedbackViewController ()

@end

static NSString *const AppyFormURL = @"http://www.appyform.com/form/Rd5EZgpLPKvB";

@implementation FeedbackViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Add a web view.
    self.webView=[[UIWebView alloc] init];
    self.webView.scrollView.scrollEnabled = YES;
    self.webView.scrollView.bounces = NO;
    self.webView.delegate = self;
    self.webView.translatesAutoresizingMaskIntoConstraints = NO;

    NSURLRequest *nsRequest =[NSURLRequest requestWithURL:[NSURL URLWithString: AppyFormURL]];
    [self.webView loadRequest:nsRequest];
    [self.view addSubview:self.webView];

    // Add activity indicator.
    self.activityIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    self.activityIndicator.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.activityIndicator];
    
    [self addConstraints];
}

- (void)addConstraints
{
    NSArray *allConstraints = @[
                                // Set web view - 4 edges to superview.
                                [NSLayoutConstraint constraintWithItem: self.webView
                                                             attribute: NSLayoutAttributeTop
                                                             relatedBy: NSLayoutRelationEqual
                                                                toItem: self.view
                                                             attribute: NSLayoutAttributeTop
                                                            multiplier: 1.0
                                                              constant: 0
                                 ],
                                [NSLayoutConstraint constraintWithItem: self.webView
                                                             attribute: NSLayoutAttributeBottom
                                                             relatedBy: NSLayoutRelationEqual
                                                                toItem: self.view
                                                             attribute: NSLayoutAttributeBottom
                                                            multiplier: 1.0
                                                              constant: -40
                                 ],
                                [NSLayoutConstraint constraintWithItem: self.webView
                                                             attribute: NSLayoutAttributeLeft
                                                             relatedBy: NSLayoutRelationEqual
                                                                toItem: self.view
                                                             attribute: NSLayoutAttributeLeft
                                                            multiplier: 1.0
                                                              constant: 0
                                 ],
                                [NSLayoutConstraint constraintWithItem: self.webView
                                                             attribute: NSLayoutAttributeRight
                                                             relatedBy: NSLayoutRelationEqual
                                                                toItem: self.view
                                                             attribute: NSLayoutAttributeRight
                                                            multiplier: 1.0
                                                              constant: 0
                                 ],
                                // Set activity indicator to be centered.
                                [NSLayoutConstraint constraintWithItem: self.activityIndicator
                                                             attribute: NSLayoutAttributeCenterX
                                                             relatedBy: NSLayoutRelationEqual
                                                                toItem: self.view
                                                             attribute: NSLayoutAttributeCenterX
                                                            multiplier: 1.0
                                                              constant: 0
                                 ],
                                [NSLayoutConstraint constraintWithItem: self.activityIndicator
                                                             attribute: NSLayoutAttributeCenterY
                                                             relatedBy: NSLayoutRelationEqual
                                                                toItem: self.view
                                                             attribute: NSLayoutAttributeCenterY
                                                            multiplier: 1.0
                                                              constant: 0
                                 ]
                                ];
    [self.view addConstraints: allConstraints];
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    [self.activityIndicator startAnimating];
    return YES;
}

- (void)webViewDidFinishLoad:(UIWebView *)webView  {
    [self.activityIndicator stopAnimating];
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    [self.activityIndicator stopAnimating];
}


@end
