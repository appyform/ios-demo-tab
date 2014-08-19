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

static NSString *const AppyFormURL = @"http://localhost:3000/form/9JjQldgLyk5R";

@implementation FeedbackViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Add a web view.
    self.webView=[[UIWebView alloc]initWithFrame:self.view.frame];
    self.webView.scrollView.scrollEnabled = YES;
    self.webView.scrollView.bounces = NO;
    self.webView.delegate = self;
    NSURLRequest *nsRequest =[NSURLRequest requestWithURL:[NSURL URLWithString: AppyFormURL]];
    [self.webView loadRequest:nsRequest];
    [self.view addSubview:self.webView];

    // Add activity indicator.
    self.activityIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    self.activityIndicator.center = self.view.center;
    [self.view addSubview:self.activityIndicator];

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
