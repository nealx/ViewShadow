//
//  ViewShadow.m
//  ViewShadow
//
//  Created by Nealx on 14-1-2.
//  Copyright (c) 2014年 www.creacree.com. All rights reserved.
//

#import "ViewShadow.h"

#define radius 2

@implementation ViewShadow
@synthesize type = _type;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];

    }
    return self;
}

- (void)setType:(int)type
{
    if (_type!=type) {
        _type = type;
        [self setNeedsDisplay];
    }
}

- (int )type
{
    return _type;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    if (self.type==1) {
        CGContextRef context = UIGraphicsGetCurrentContext ();
        CGContextSaveGState (context);
        CGMutablePathRef shadowPath = CGPathCreateMutable ();
        CGPathMoveToPoint (shadowPath, NULL, radius, -self.bounds.size.height);
        CGPathAddLineToPoint (shadowPath, NULL, radius, -radius);
        CGPathAddQuadCurveToPoint(shadowPath, NULL, self.bounds.size.width/2, -self.bounds.size.height-radius, self.bounds.size.width-(radius*2), -radius);
        CGPathAddLineToPoint (shadowPath, NULL, self.bounds.size.width-(radius*2), -self.bounds.size.height);
        CGPathCloseSubpath (shadowPath);
        
        UIColor *color = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.6];
        CGContextSetShadowWithColor (context, CGSizeMake (0, self.frame.size.height), radius, color.CGColor);
        CGContextAddPath (context, shadowPath);
        CGContextFillPath (context);
        CGPathRelease (shadowPath);
        CGContextRestoreGState (context);
    }
    else if (self.type==2)
    {
        int radiusType2 = radius*2;
        CGContextRef context = UIGraphicsGetCurrentContext ();
        CGContextSaveGState (context);
        CGMutablePathRef shadowPath = CGPathCreateMutable ();
        CGPathAddEllipseInRect(shadowPath, NULL, CGRectMake(radiusType2, -self.bounds.size.height+radiusType2, self.bounds.size.width-radiusType2*2, self.bounds.size.height-radiusType2*2));
        CGPathCloseSubpath (shadowPath);
        
        UIColor *color = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.2];
        CGContextSetShadowWithColor (context, CGSizeMake (0, self.frame.size.height), radius*2, color.CGColor);
        CGContextAddPath (context, shadowPath);
        CGContextFillPath (context);
        CGPathRelease (shadowPath);
        CGContextRestoreGState (context);
    }
    else
    {
        CGContextRef context = UIGraphicsGetCurrentContext ();
        CGContextSaveGState (context);
        CGMutablePathRef shadowPath = CGPathCreateMutable ();
        CGPathMoveToPoint(shadowPath, NULL, 0, -self.bounds.size.height*3/2);
        CGPathAddLineToPoint(shadowPath, NULL, 0, -self.bounds.size.height);
        CGPathAddQuadCurveToPoint(shadowPath, NULL, self.bounds.size.width/2, self.bounds.size.height-radius, self.bounds.size.width, -self.bounds.size.height);
        CGPathAddLineToPoint(shadowPath, NULL, self.bounds.size.width, -self.bounds.size.height*3/2);
        CGPathCloseSubpath (shadowPath);
        
        UIColor *color = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.6];
        CGContextSetShadowWithColor (context, CGSizeMake (0, self.frame.size.height), radius, color.CGColor);
        CGContextAddPath (context, shadowPath);
        CGContextFillPath (context);
        CGPathRelease (shadowPath);
        CGContextRestoreGState (context);
    }


}

@end
