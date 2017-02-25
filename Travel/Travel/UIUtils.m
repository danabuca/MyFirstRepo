//
//  UIUtils.m
//  Travel
//
//  Created by Dana Buca on 25/02/2017.
//  Copyright © 2017 Dana Bucadana. All rights reserved.
//

#import "UIUtils.h"


#import "UIUtils.h"
#import "Constants.h"

@interface UIUtils ()

@end

@implementation UIUtils

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


+ (void)setUIColors {
    UIImage *img = [UIImage imageNamed:@"nav.png"];
    [[UINavigationBar appearance] setBackgroundImage:img forBarMetrics:UIBarMetricsDefault];
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    [[UITabBar appearance] setTintColor:GLOBAL_TINT_COLOR];
    [[UITableView appearance] setSectionIndexColor:GLOBAL_TINT_COLOR];
    [[UISegmentedControl appearance] setTintColor:GLOBAL_TINT_COLOR];
    [[UISwitch appearance] setOnTintColor:GLOBAL_TINT_COLOR];
    [[UIToolbar appearance] setTintColor:[UIColor whiteColor]];
    [[UIToolbar appearance] setBarTintColor:GLOBAL_TINT_COLOR];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
