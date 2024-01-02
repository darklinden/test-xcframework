//
//  main.m
//  demo
//
//  Created by darklinden on 2024/1/2.
//

#import "AppDelegate.h"
#import <UIKit/UIKit.h>

int main(int argc, char* argv[])
{
    NSString* appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
