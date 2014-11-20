//
//  ViewController.m
//  GBIWallpaper
//
//  Created by Yannick Weiss on 28.10.14.
//  Copyright (c) 2014 GBI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *devicename;
@property (weak, nonatomic) IBOutlet UILabel *devicemodel;
@property (weak, nonatomic) IBOutlet UILabel *deviceversion;
@property (weak, nonatomic) IBOutlet UILabel *deviceresolution;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.devicename.text = [[UIDevice currentDevice] name];
    self.devicemodel.text = [[[UIDevice currentDevice] model] stringByAppendingString:@"12345"];
    self.deviceversion.text = [@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]];
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    CGFloat screenScale = [[UIScreen mainScreen] scale];
    NSString *res = screenScale > 1 ? @"Retina " : @"";
    res = [NSString stringWithFormat:@"%@ (%dx%d)", res, (int)floor(screenBounds.size.height), (int)floor(screenBounds.size.width * screenScale)];
    self.deviceresolution.text = res;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotate {
    return YES;
}



@end
