//
//  JASwitchButton.m
//  JASwitchButton
//
//  Created by Janrin on 16/1/1.
//  Copyright © 2016年 Janrin. All rights reserved.
//

#import "JASwitchButton.h"

@implementation JASwitchButton

#pragma mark - Initialization
- (instancetype)init {
    self = [super init];
    if (self) {
        [self initSwitch];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self initSwitch];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self initSwitch];
    }
    return self;
}

- (void)initSwitch {
    // Default
    _duration = 0.3;
    _transitionType = kCATransitionFade;
    _transitionDirection = nil;
    
    [self addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
}

- (void)click {
    [self.layer removeAllAnimations];
    [self setSwitchState:!_switchState];
    CATransition *transition = [CATransition animation];
    transition.duration = _duration;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
    transition.type = _transitionType;
    transition.subtype = _transitionDirection;
    [self.layer addAnimation:transition forKey:nil];
}

- (void)setBackgroundImage:(UIImage *)image forState:(UIControlState)state {
}

- (void)setTitle:(NSString *)title forState:(UIControlState)state {
}


#pragma mark - Getter&Setter
- (void)setOnImage:(UIImage *)onImage {
    _onImage = onImage;
    if (self.switchState) {
        [self setImage:_onImage forState:UIControlStateNormal];
    }
}

- (void)setOffImage:(UIImage *)offImage {
    _offImage = offImage;
    if (!self.switchState) {
        [self setImage:_offImage forState:UIControlStateNormal];
    }
}

- (void)setSwitchState:(BOOL)switchState {
    _switchState = switchState;
    if (switchState) {
        [self setImage:self.onImage forState:UIControlStateNormal];
    } else {
        [self setImage:self.offImage forState:UIControlStateNormal];
    }
}

@end
