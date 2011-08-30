//
//  Marker.m
//  ColorSwap
//
//  Created by Amiel Martin on 8/29/11.
//  Copyright 2011 Carnes Media. All rights reserved.
//

#import "Marker.h"

@implementation Marker

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesBegan:%@ withEvent:", touches);
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {

//    NSLog(@"touchesMoved:%@ withEvent:", touches);

    if ([touches count] == 1) {
        UITouch* touch = [touches anyObject];
        self.center = [touch locationInView:[self superview]];
    }
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesEnded:%@ withEvent:", touches);
}


- (void)setColorForIndex:(int)i {
    UIColor* c;
    switch (i % 3) {
        case 0:
            c = [UIColor greenColor];
            break;
        case 1:
            c = [UIColor yellowColor];
            break;
        case 2:
            c = [UIColor blueColor];
            break;
        default:
            break;
    }
    
    [self setBackgroundColor:c];
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
