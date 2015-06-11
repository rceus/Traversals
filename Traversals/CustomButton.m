//
//  CustomButton.m
//  Traversals
//
//  Created by Rishabh Jain on 6/10/15.
//  Copyright (c) 2015 Rishabh Jain. All rights reserved.
//

#import "CustomButton.h"
#import <QuartzCore/QuartzCore.h>

@implementation CustomButton{
    CGContextRef classContext;
}

-(void) drawRect: (CGRect) rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    classContext = context;
    UIColor * yellowColor = [UIColor colorWithRed:1.0 green:1.0 blue:0.0 alpha:1.0];
    CGContextSetFillColorWithColor(context, yellowColor.CGColor);
    CGContextFillRect(context, self.bounds);
    //self.clipsToBounds = YES;
    //self.layer.cornerRadius = 20;
    //[self addTarget:self action:@selector(wasDragged:withEvent:)
    //   forControlEvents:UIControlEventTouchDragInside];

}

- (void)highlightButton{
    NSLog(@"Reached");
    //UIGraphicsBeginImageContext(self.frame.size);
    UIColor * redColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    CGContextSetFillColorWithColor(classContext, redColor.CGColor);
    CGContextFillRect(classContext, self.bounds);
    //UIGraphicsEndImageContext();
    
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
