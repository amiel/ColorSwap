//
//  ColorSwapAppDelegate.h
//  ColorSwap
//
//  Created by Amiel Martin on 8/29/11.
//  Copyright 2011 Carnes Media. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ColorSwapViewController;

@interface ColorSwapAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ColorSwapViewController *viewController;

@end
