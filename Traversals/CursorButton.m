//
//  CursorButton.m
//  Traversals
//
//  Created by Rishabh Jain on 6/11/15.
//  Copyright (c) 2015 Rishabh Jain. All rights reserved.
//

#import "CursorButton.h"

@implementation CursorButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
*/

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    UIColor * yellowColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    CGContextSetFillColorWithColor(context, yellowColor.CGColor);
    CGContextFillRect(context, self.bounds);
    //self.clipsToBounds = YES;
    //self.layer.cornerRadius = 20;
    //[self addTarget:self action:@selector(wasDragged:withEvent:)
    //   forControlEvents:UIControlEventTouchDragInside];

}

@end
