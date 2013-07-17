//
//  GEProgress.m
//  NaoMiShoppingStreet
//
//  Created by SUN YANLIANG on 13-7-12.
//  Copyright (c) 2013年 www.naomi.cn. All rights reserved.
//

#import "GEProgress.h"

@interface GEProgress ()

@property (retain,nonatomic) UIView* progressView;

@end


@implementation GEProgress
@synthesize progress = _progress;

- (void)dealloc
{
    [_progressView release];
    [_progressColor release];
    [super dealloc];
}
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.progress = 0.0f;
        self.progressAnimationDuration = 0.2f;
        self.progressColor = [UIColor redColor];
        self.backgroundColor = [UIColor clearColor];
        
        UIView* progressView = [[UIView new] autorelease];
        [self addSubview:progressView];
        self.progressView = progressView;
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/
-(void)willMoveToSuperview:(UIView *)newSuperview
{
    _progressView.backgroundColor = self.progressColor;
}

-(void)setProgress:(float)progress
{
    [UIView animateWithDuration:self.progressAnimationDuration animations:^{
        self.progressView.frame = CGRectMake(0, 0, progress * self.bounds.size.width, self.bounds.size.height);
    }];
}

@end
