//
//  CustomView.m
//  Traversals
//
//  Created by Rishabh Jain on 6/10/15.
//  Copyright (c) 2015 Rishabh Jain. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetStrokeColorWithColor(context, [[UIColor blueColor] CGColor]);
    CGContextSetLineWidth(context, 3.0);
    CGContextMoveToPoint(context, 360/2, 100.0);
    CGContextAddLineToPoint(context, 370/4, 160.0);
    CGContextDrawPath(context, kCGPathStroke);
}

- (void)changeLinePositionOneX:(int)x1 positionOneY:(int)y1 positionTwoX:(int)x2 positionTwoY:(int)y2 {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(context, x1, y1);
    CGContextAddLineToPoint(context, x2, y2);
}


@end
