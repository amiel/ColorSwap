//
//  ColorSwapViewController.m
//  ColorSwap
//
//  Created by Amiel Martin on 8/29/11.
//  Copyright 2011 Carnes Media. All rights reserved.
//

#import "ColorSwapViewController.h"
#import "Marker.h"

@implementation ColorSwapViewController

@synthesize markers;

- (void)dealloc {
    [markers release];
    
    [super dealloc];
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    Marker* tmpView;
    NSMutableArray* tmpArray = [[NSMutableArray alloc] initWithCapacity:9];
    
//    29, 117
//    62, 117
//    29, 150
    
    int x_origin = 29;
    int y_origin = 117;
    int grid_size = 33;
    
    for (int i = 0; i < 9; ++i) {
        tmpView = [[Marker alloc] init];
        
        [tmpArray addObject:tmpView];        
                
        [[self view] addSubview:tmpView];
        tmpView.center = CGPointMake((i * grid_size) + x_origin, y_origin - 20);

        [tmpView release];
    }
    
    
    [super viewDidLoad];
}


- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
