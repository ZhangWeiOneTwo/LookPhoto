//
//  ViewController.m
//  LookPhoto
//
//  Created by 张伟 on 2018/11/15.
//  Copyright © 2018 张伟. All rights reserved.
//

#import "ViewController.h"
#import "ZWImageBrowserView.h"
#import "UIView+RelativeCoordinate.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *button;
@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UIImage *image;
@end

@implementation ViewController
{
    UIImageView * photoImageView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.imageView];
    [self.imageView addSubview:self.button];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)click_button
{
    self.image = [UIImage imageNamed:@"new_mine_wifi"];
    UIView *keyWindow = [UIApplication sharedApplication].keyWindow;
    CGRect rect = [self.imageView relativePositionTo:keyWindow];
   ZWImageBrowserView *browser = [[ZWImageBrowserView alloc] initWithPicThumbnail:self.image fromRect:rect];


    [keyWindow addSubview:browser];
}

#pragma mark -setter and getter

- (UIButton *)button
{
    if (_button == nil)
    {
        _button = [UIButton buttonWithType:UIButtonTypeCustom];
        _button.frame = CGRectMake(0, 0, 100, 100);
        [_button addTarget:self action:@selector(click_button) forControlEvents:UIControlEventTouchUpInside];
    }
    return _button;
}

- (UIImageView *)imageView
{
    if (_imageView == nil)
    {
        _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 150, 100, 100)];
        _imageView.image = [UIImage imageNamed:@"new_mine_wifi"];
        _imageView.userInteractionEnabled = YES;
    }
    return _imageView;
}

@end
