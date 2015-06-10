//
//  CustomEdge.m
//  Traversals
//
//  Created by Rishabh Jain on 6/10/15.
//  Copyright (c) 2015 Rishabh Jain. All rights reserved.
//

#import "CustomEdge.h"

@implementation CustomEdge{
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(context, [[UIColor blueColor] CGColor]);
    CGContextSetLineWidth(context, 3.0);
    CGContextMoveToPoint(context, 10.0, 10.0);
    CGContextAddLineToPoint(context, 100.0, 100.0);
    CGContextDrawPath(context, kCGPathStroke);
}

- (void)changeLinePositionOneX:(int)x1 positionOneY:(int)y1 positionTwoX:(int)x2 positionTwoY:(int)y2 {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(context, x1, y1);
    CGContextAddLineToPoint(context, x2, y2);
    self.fromX = x1;
    self.fromY = y1;
    self.toX = x2;
    self.toY = y2;
}
@end
