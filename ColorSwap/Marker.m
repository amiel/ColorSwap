//
//  Marker.m
//  ColorSwap
//
//  Created by Amiel Martin on 8/29/11.
//  Copyright 2011 Carnes Media. All rights reserved.
//

#import "Marker.h"

@implementation Marker


- (id)init {
    self = [super initWithFrame:CGRectMake(0, 0, 25, 25)];
    if (self) {
        [self setBackgroundColor:[UIColor whiteColor]];
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesBegan:%@ withEvent:", touches);
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {

    int x_origin = 29;
    int y_origin = 117;
    int grid_size = 33;
    
    
    
//    NSLog(@"touchesMoved:%@ withEvent:", touches);

    if ([touches count] == 1) {
        CGPoint location = [[touches anyObject] locationInView:[self superview]];

        self.center = CGPointMake(
                                  ((int)location.x / grid_size * grid_size) - 4,
                                  ((int)location.y / grid_size * grid_size) - 2
                                );
    }
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesEnded:%@ withEvent:", touches);
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
