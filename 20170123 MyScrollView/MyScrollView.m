//
//  MyScrollView.m
//  20170123 MyScrollView
//
//  Created by Minhung Ling on 2017-01-23.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UIPanGestureRecognizer *pgr = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(scroll:)];
        [self addGestureRecognizer:pgr];
    }
    return self;
}

- (void) scroll: (UIPanGestureRecognizer *) sender {
    CGRect viewTranslation = self.bounds;
    viewTranslation.origin.y = viewTranslation.origin.y - [sender translationInView:self].y;
    if (viewTranslation.origin.y + self.frame.size.height > self.mySize.height) {
        viewTranslation.origin.y = self.mySize.height - self.bounds.size.height;
    }
    if (viewTranslation.origin.y < 0) {
        viewTranslation.origin.y = 0;
    }
    self.bounds = viewTranslation;
    [sender setTranslation:CGPointZero inView:self];
}


@end
