//
//  UIImage+Helper.h
//  checkyourlife
//
//  Created by Gatacca on 28/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Helper)
+ (UIImage *) imageWithView:(UIView *)view;
- (UIImage *) scaleToSize: (CGSize)size;
- (UIImage *) scaleProportionalToSize: (CGSize)size;
@end
