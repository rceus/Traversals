//
//  DetailViewController.m
//  Traversals
//
//  Created by Rishabh Jain on 6/10/15.
//  Copyright (c) 2015 Rishabh Jain. All rights reserved.
//

#import "DetailViewController.h"

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
}

- (void)createGraph {
    NSLog(@"Reached a Graph Method");
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
