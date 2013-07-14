//
//  MenuButton.m
//  WizardWar
//
//  Created by Sean Hess on 5/31/13.
//  Copyright (c) 2013 The LAB. All rights reserved.
//

#import "MenuButton.h"
#import <QuartzCore/QuartzCore.h>
#import "AppStyle.h"

@implementation MenuButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self initialize];        
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        // Initialization code
        [self initialize];
    }
    
    return self;
}

- (void)initialize {
    
    [self.titleLabel setFont:[UIFont fontWithName:FONT_LOVEYA_BOLD size:14]];
    [self setBackgroundImage:[UIImage imageNamed:@"btn-yellow-normal"] forState:UIControlStateNormal];
    [self setTitleColor:AppStyle.yellowButtonTextColor forState:UIControlStateNormal];
    [self setBackgroundImage:[UIImage imageNamed:@"btn-yellow-highlighted"] forState:UIControlStateHighlighted];
    [self setTitleColor:AppStyle.yellowButtonTextColor forState:UIControlStateHighlighted];

    self.titleLabel.shadowColor = [UIColor whiteColor];

    self.titleLabel.layer.shadowColor = [self.titleLabel.shadowColor CGColor];
    self.titleLabel.layer.shadowOffset = CGSizeMake(0.0, 0.5);
    self.titleLabel.layer.shadowRadius = 1.0;
    self.titleLabel.layer.shadowOpacity = 1;
    self.titleLabel.layer.masksToBounds = NO;
    
    
    
//    [self setBackgroundImage:AppStyle.blueNavColorImage forState:UIControlStateNormal];
//    [self setBackgroundImage:[AppStyle imageWithColor:UIColorFromRGB(0xFFFFFF)] forState:UIControlStateHighlighted];
//    [self setTintColor:AppStyle.blueNavColor];
    
    self.layer.cornerRadius = 10.0f;
    self.layer.borderColor = [[UIColor clearColor] CGColor];
    self.layer.borderWidth = 2.0f;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
