//
//  DetailSubView.m
//  Traversals
//
//  Created by Rishabh Jain on 6/10/15.
//  Copyright (c) 2015 Rishabh Jain. All rights reserved.
//

#import "DetailSubView.h"
#import "CustomView.h"
#import "CustomButton.h"

@implementation DetailSubView{
    CustomButton *button1, *button2, *button3, *button4, *button5, *button6, *button7;
    CustomView  *line1, *line2, *line3, *line4, *line5, *line6, *line7;
    NSTimer* timer;
    float duration;
}

- (void)drawRect:(CGRect)rect {
    // Drawing code
    line1 = [[CustomView alloc] initWithFrame:self.bounds];
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    line1.backgroundColor = [UIColor clearColor];
    [self addSubview:line1];
    
    [line1 changeLinePositionOneX:(screenBounds.size.width/2) positionOneY:100.0 positionTwoX:(screenBounds.size.width/4) positionTwoY:160.0];
    [line1 changeLinePositionOneX:(screenBounds.size.width/2) positionOneY:100.0 positionTwoX:(screenBounds.size.width * 3/4) positionTwoY:160];
    [line1 changeLinePositionOneX:(screenBounds.size.width/4) positionOneY:160.0 positionTwoX:(screenBounds.size.width/8) positionTwoY:240.0];
    [line1 changeLinePositionOneX:(screenBounds.size.width/4) positionOneY:160.0 positionTwoX:(screenBounds.size.width*3/8) positionTwoY:240.0];
    [line1 changeLinePositionOneX:(screenBounds.size.width*3/4) positionOneY:160.0 positionTwoX:(screenBounds.size.width*5/8) positionTwoY:240.0];
    [line1 changeLinePositionOneX:(screenBounds.size.width*3/4) positionOneY:160.0 positionTwoX:(screenBounds.size.width*7/8) positionTwoY:240.0];

    
    button1 = [CustomButton buttonWithType:UIButtonTypeSystem];
    [button1 setTitle:@" 1 " forState:UIControlStateNormal];
    [button1 sizeToFit];
    button1.center = CGPointMake(screenBounds.size.width/2, 100);
    [self addSubview:button1];

    //[button1 performSelectorOnMainThread:@selector(highlightButton) withObject:nil waitUntilDone:NO];

    button2 = [CustomButton buttonWithType:UIButtonTypeSystem];
    [button2 setTitle:@" 2 " forState:UIControlStateNormal];
    [button2 sizeToFit];
    button2.center = CGPointMake(screenBounds.size.width/4, 160);
    [self addSubview:button2];

    button3 = [CustomButton buttonWithType:UIButtonTypeSystem];
    [button3 setTitle:@" 3 " forState:UIControlStateNormal];
    [button3 sizeToFit];
    button3.center = CGPointMake((screenBounds.size.width * 3)/4, 160);
    [self addSubview:button3];
    
    button4 = [CustomButton buttonWithType:UIButtonTypeSystem];
    [button4 setTitle:@" 4 " forState:UIControlStateNormal];
    [button4 sizeToFit];
    button4.center = CGPointMake((screenBounds.size.width)/8, 240);
    [self addSubview:button4];
    
    button5 = [CustomButton buttonWithType:UIButtonTypeSystem];
    [button5 setTitle:@" 5 " forState:UIControlStateNormal];
    [button5 sizeToFit];
    button5.center = CGPointMake((screenBounds.size.width * 3)/8, 240);
    [self addSubview:button5];
    
    button6 = [CustomButton buttonWithType:UIButtonTypeSystem];
    [button6 setTitle:@" 6 " forState:UIControlStateNormal];
    [button6 sizeToFit];
    button6.center = CGPointMake((screenBounds.size.width * 5)/8, 240);
    [self addSubview:button6];
    
    button7 = [CustomButton buttonWithType:UIButtonTypeSystem];
    [button7 setTitle:@" 7 " forState:UIControlStateNormal];
    [button7 sizeToFit];
    button7.center = CGPointMake((screenBounds.size.width * 7)/8, 240);
    [self addSubview:button7];
    
    
    self.progressBar.frame  = CGRectMake(0.0, 0.0, 40.0, 40.0);
    self.progressBar.center = self.center;
    [self addSubview:self.progressBar];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(updateProgress) userInfo:nil repeats:YES];

}
-(void)updateProgress
{
    NSLog(@"In Update Progress");
    duration += 0.1;
    
    self.progressBar.progress = (duration/10.0); // here 5.0 indicates your required time duration
    
    if (self.progressBar.progress == 1)
    {
        [timer invalidate];
        
        timer = nil;
    }
}


@end
