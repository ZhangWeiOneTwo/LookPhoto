//
//  ZWImageBrowserView.h
//  LookPhoto
//
//  Created by 张伟 on 2018/11/15.
//  Copyright © 2018 张伟. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
#define PROGRESS_VIEW_WIDTH 60.f
#define BUTTON_SIDE_MARGIN 20.f
#define PREVIEW_ANIMATION_DURATION 0.5f

@interface ZWImageBrowserView : UIView <UIScrollViewDelegate, UIActionSheetDelegate>


//@property (nonatomic, copy) NSString* urlPath;
@property (nonatomic, assign) CGRect        fromRect;

@property (nonatomic, strong) UIImage       *thumbnail;
@property (nonatomic, strong) UIScrollView  *scrollView;
@property (nonatomic, strong) UIImageView   *imageView;
@property (nonatomic, strong) UIActivityIndicatorView *activityIndicator;
- (id)initWithPicThumbnail:(UIImage*)thumbnail fromRect:(CGRect)rect;

@end

NS_ASSUME_NONNULL_END
