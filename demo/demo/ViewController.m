//
//  ViewController.m
//  demo
//
//  Created by darklinden on 2024/1/2.
//

#import "ViewController.h"
#import <test_framework/test_framework.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    int c = [test_framework add:1 with:2];
    NSLog(@"add %d", c);
}

@end
