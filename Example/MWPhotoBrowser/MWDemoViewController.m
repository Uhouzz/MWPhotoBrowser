
//
//  MWDemoViewController.m
//  MWPhotoBrowser
//
//  Created by Tony on 16/11/9.
//  Copyright © 2016年 Michael Waterfall. All rights reserved.
//

#import "MWDemoViewController.h"
#import <MWPhotoBrowser.h>

@interface MWDemoViewController ()

@end

@implementation MWDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    UIImageView *testImage = [[UIImageView alloc] initWithFrame:CGRectMake(50, 100, 250, 250)];
    testImage.userInteractionEnabled = YES;
    testImage.backgroundColor = [UIColor redColor];
    [self.view addSubview:testImage];
    
    UITapGestureRecognizer *tap  = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(test:)];
    [testImage addGestureRecognizer:tap];
}

- (void)test:(UITapGestureRecognizer *)tap{
    
    MWPhoto *photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"http://pic.58pic.com/58pic/15/14/35/03c58PICUrD_1024.jpg"]];
    photo.placeholderImage = [UIImage imageNamed:@"timg.jpeg"];
    MWPhotoBrowser *browser = [[MWPhotoBrowser alloc] initWithPhotos:@[photo] animatedFromView:tap.view];
    browser.shouldTapDismiss = YES;
    [self presentViewController:browser animated:YES completion:^{
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
