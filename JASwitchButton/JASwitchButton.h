//
//  JASwitchButton.h
//  JASwitchButton
//
//  https://github.com/Janrin/JASwitchButton.git
//
//  Created by Janrin on 16/1/1.
//  Copyright © 2016年 Janrin. All rights reserved.
//

#import <UIKit/UIKit.h>


IB_DESIGNABLE
@interface JASwitchButton : UIButton

/** 图片ON */
@property (strong, nonatomic) IBInspectable UIImage *onImage;
/** 图片OFF */
@property (strong, nonatomic) IBInspectable UIImage *offImage;
/** 开关状态 */
@property (assign, nonatomic) IBInspectable BOOL switchState;
/** 过渡类型  CATransition type*/
@property (strong, nonatomic) NSString *transitionType;
/** 过渡方向 CATransition subtype*/
@property (strong, nonatomic) NSString *transitionDirection;
/** 过渡时间 */
@property (assign, nonatomic) NSTimeInterval duration;


@end
