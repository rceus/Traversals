//
//  DetailViewController.m
//  Traversals
//
//  Created by Rishabh Jain on 6/10/15.
//  Copyright (c) 2015 Rishabh Jain. All rights reserved.
//

#import "DetailViewController.h"
#import "CustomButton.h"
#import "CustomView.h"

@interface DetailViewController ()

@end

@implementation DetailViewController{
    double stepperCurrentValue;
}

#pragma mark - Managing the detail item


- (void)setDetailItem:(NSString*)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        NSLog(@"Got Item: %@", _detailItem);
    }
    
}

- (void)configureView {
    // Update the user interface for the detail item.
    [self setLabels];
    stepperCurrentValue = _stepperObject.value;
    if ([_detailItem containsString:@"Traversal"]) {
        [self createTree];
    } else {
        [self createGraph];
    }
    
}

- (void)setLabels{
    self.label.text = _detailItem;
    self.labelDescription.text = [self getLabelDescription:_detailItem];
    self.answer.text = @"Answer Here";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //Cannot Use More than 10 Objects (Change to Number of Nodes later)
    self.stepperObject.maximumValue = 10;
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)fetch:(UIStepper *)sender {
    NSLog(@"Fetching...");
    if (_stepperObject.value > stepperCurrentValue) {
        //Plus Button Pressed
        NSLog(@"Positive State");
        stepperCurrentValue++;
        [self fetchNext];
        
    } else if (_stepperObject.value < stepperCurrentValue){
        //Minus Button Pressed
        NSLog(@"Negative State");
        stepperCurrentValue--;
    }
}

- (void)fetchPrevious{
    
}

- (void)fetchNext{
}

- (void)createTree {
    NSLog(@"Reached a Tree Method");
    CGRect screenBounds = [[UIScreen mainScreen] bounds];

    CustomView *view = [[CustomView alloc] initWithFrame:self.view.bounds];
    view.backgroundColor = [UIColor clearColor];
    [self.view addSubview:view];
    [view changeLinePositionOneX:(screenBounds.size.width/2) positionOneY:100 positionTwoX:(screenBounds.size.width/4, 160) positionTwoY:160];

    _button1 = [CustomButton buttonWithType:UIButtonTypeSystem];
    [_button1 setTitle:@" 1 " forState:UIControlStateNormal];
    [_button1 sizeToFit];
    _button1.center = CGPointMake(screenBounds.size.width/2, 100);
    [self.view addSubview:_button1];
    
    _button2 = [CustomButton buttonWithType:UIButtonTypeSystem];
    [_button2 setTitle:@" 2 " forState:UIControlStateNormal];
    [_button2 sizeToFit];
    _button2.center = CGPointMake(screenBounds.size.width/4, 160);
    [self.view addSubview:_button2];
    
    
    _button3 = [CustomButton buttonWithType:UIButtonTypeSystem];
    [_button3 setTitle:@" 3 " forState:UIControlStateNormal];
    [_button3 sizeToFit];
    _button3.center = CGPointMake((screenBounds.size.width * 3)/4, 160);
    [self.view addSubview:_button3];
    
    _button4 = [CustomButton buttonWithType:UIButtonTypeSystem];
    [_button4 setTitle:@" 4 " forState:UIControlStateNormal];
    [_button4 sizeToFit];
    _button4.center = CGPointMake((screenBounds.size.width)/8, 240);
    [self.view addSubview:_button4];
    
    _button5 = [CustomButton buttonWithType:UIButtonTypeSystem];
    [_button5 setTitle:@" 5 " forState:UIControlStateNormal];
    [_button5 sizeToFit];
    _button5.center = CGPointMake((screenBounds.size.width * 3 )/8, 240);
    [self.view addSubview:_button5];
    
    _button6 = [CustomButton buttonWithType:UIButtonTypeSystem];
    [_button6 setTitle:@" 6 " forState:UIControlStateNormal];
    [_button6 sizeToFit];
    _button6.center = CGPointMake((screenBounds.size.width * 5)/8, 240);
    [self.view addSubview:_button6];
    
    _button7 = [CustomButton buttonWithType:UIButtonTypeSystem];
    [_button7 setTitle:@" 7 " forState:UIControlStateNormal];
    [_button7 sizeToFit];
    _button7.center = CGPointMake((screenBounds.size.width * 7)/8, 240);
    [self.view addSubview:_button7];
}

- (void)createGraph {
    NSLog(@"Reached a Graph Method");
    _button1 = [CustomButton buttonWithType:UIButtonTypeSystem];
    [_button1 setTitle:@" 1 " forState:UIControlStateNormal];
    [_button1 sizeToFit];
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    _button1.center = CGPointMake(screenBounds.size.width/2, 100);
    [self.view addSubview:_button1];
    
    _button2 = [CustomButton buttonWithType:UIButtonTypeSystem];
    [_button2 setTitle:@" 2 " forState:UIControlStateNormal];
    [_button2 sizeToFit];
    _button2.center = CGPointMake(screenBounds.size.width/4, 160);
    [self.view addSubview:_button2];
    
    _button3 = [CustomButton buttonWithType:UIButtonTypeSystem];
    [_button3 setTitle:@" 3 " forState:UIControlStateNormal];
    [_button3 sizeToFit];
    _button3.center = CGPointMake((screenBounds.size.width * 3)/4, 160);
    [self.view addSubview:_button3];
    
    _button4 = [CustomButton buttonWithType:UIButtonTypeSystem];
    [_button4 setTitle:@" 4 " forState:UIControlStateNormal];
    [_button4 sizeToFit];
    _button4.center = CGPointMake((screenBounds.size.width)/4, 240);
    [self.view addSubview:_button4];
    
    _button5 = [CustomButton buttonWithType:UIButtonTypeSystem];
    [_button5 setTitle:@" 5 " forState:UIControlStateNormal];
    [_button5 sizeToFit];
    _button5.center = CGPointMake((screenBounds.size.width * 3 )/4, 240);
    [self.view addSubview:_button5];
    
    _button6 = [CustomButton buttonWithType:UIButtonTypeSystem];
    [_button6 setTitle:@" 6 " forState:UIControlStateNormal];
    [_button6 sizeToFit];
    _button6.center = CGPointMake((screenBounds.size.width )/4, 320);
    [self.view addSubview:_button6];
    
    _button7 = [CustomButton buttonWithType:UIButtonTypeSystem];
    [_button7 setTitle:@" 7 " forState:UIControlStateNormal];
    [_button7 sizeToFit];
    _button7.center = CGPointMake((screenBounds.size.width * 3)/4, 320);
    [self.view addSubview:_button7];

}


- (NSString*)getLabelDescription:(NSString*)type{
    NSLog(@"Getting Label Description for %@", type);
    if([type  isEqualToString: @"In-Order Traversal"]) {
        return @"1. Traverse the left subtree by recursively calling the in-order function. \r2. Display the data part of root element (or current element). \r3. Traverse the right subtree by recursively calling the in-order function.";
    } else if ([type isEqualToString:@"Pre-Order Traversal"]){
        return @"1. Display the data part of root element (or current element)\r2. Traverse the left subtree by recursively calling the pre-order function.\r3. Traverse the right subtree by recursively calling the pre-order function.";
    } else if ([type isEqualToString:@"Post-Order Traversal"]){
        return @"1. Traverse the left subtree by recursively calling the post-order function\r2. Traverse the right subtree by recursively calling the post-order function.\r3. Display the data part of root element (or current element).";
    } else if ([type isEqualToString:@"Comparison of Tree Traversals"]){
        return @"Coming Soon";
    } else if ([type isEqualToString:@"Breadth First Search"]){
        return @"Starts at the tree root (or some arbitrary node of a graph, sometimes referred to as a 'search key') and explores the neighbor nodes first, before moving to the next level neighbors.";
    } else if ([type isEqualToString:@"Depth First Search"]){
        return @"Starts at the root (selecting some arbitrary node as the root in the case of a graph) and explores as far as possible along each branch before backtracking.";
    }

    return @"Should not reach here!";
}

@end
