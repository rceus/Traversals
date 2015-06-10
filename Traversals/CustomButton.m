//
//  CustomButton.m
//  Traversals
//
//  Created by Rishabh Jain on 6/10/15.
//  Copyright (c) 2015 Rishabh Jain. All rights reserved.
//

#import "CustomButton.h"
#import <QuartzCore/QuartzCore.h>

@implementation CustomButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void) drawRect: (CGRect) rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    UIColor * yellowColor = [UIColor colorWithRed:1.0 green:1.0 blue:0.0 alpha:1.0];
    CGContextSetFillColorWithColor(context, yellowColor.CGColor);
    CGContextFillRect(context, self.bounds);
    self.clipsToBounds = YES;
    self.layer.cornerRadius = 24;
    [self addTarget:self action:@selector(wasDragged:withEvent:)
       forControlEvents:UIControlEventTouchDragInside];

}

- (void)highlightButton{
    CGContextRef context = UIGraphicsGetCurrentContext();
    UIColor * redColor = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
    CGContextSetFillColorWithColor(context, redColor.CGColor);
}

- (void)wasDragged:(UIButton *)button withEvent:(UIEvent *)event
{
    // get the touch
    UITouch *touch = [[event touchesForView:button] anyObject];
    CGPoint previousLocation = [touch previousLocationInView:button];
    
    //Fails probably when the x and y are same at some point of time
//    if (self.edge) {
//        if(self.edge.fromX == previousLocation.x){
//            //Change only from coordinates - pass in existing ones for to again
//        } else if (self.edge.toX == previousLocation.x){
//            //Change only to Coordinates - pass in exisiting ones for from again
//        }
//    }

    // get delta
    CGPoint location = [touch locationInView:button];
    CGFloat delta_x = location.x - previousLocation.x;
    CGFloat delta_y = location.y - previousLocation.y;
    
    // move button
    button.center = CGPointMake(button.center.x + delta_x,
                                button.center.y + delta_y);
    
}



@end
