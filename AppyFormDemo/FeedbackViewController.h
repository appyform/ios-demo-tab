//
//  FeedbackViewController.h
//  AppyFormDemo
//
//  Created by Daniel Lam on 18/08/2014.
//  Copyright (c) 2014 AppyForm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FeedbackViewController : UIViewController<UIWebViewDelegate>

@property UIActivityIndicatorView *activityIndicator;
@property UIWebView *webView;

@end
