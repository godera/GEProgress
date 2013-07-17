//
//  GEProgress.h
//  NaoMiShoppingStreet
//
//  Created by SUN YANLIANG on 13-7-12.
//  Copyright (c) 2013年 www.naomi.cn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GEProgress : UIView

@property (nonatomic) float progress; // default: 0.0f

@property (nonatomic) float progressAnimationDuration; // default: 0.2f

@property (nonatomic, retain) UIColor* progressColor;


@end
