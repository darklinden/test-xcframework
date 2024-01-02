//
//  test_framework.h
//  test_framework
//
//  Created by darklinden on 2024/1/2.
//

#import <Foundation/Foundation.h>

//! Project version number for test_framework.
FOUNDATION_EXPORT double test_frameworkVersionNumber;

//! Project version string for test_framework.
FOUNDATION_EXPORT const unsigned char test_frameworkVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <test_framework/PublicHeader.h>

@interface test_framework : NSObject

+ (int)add:(int)a with:(int)b;

@end
