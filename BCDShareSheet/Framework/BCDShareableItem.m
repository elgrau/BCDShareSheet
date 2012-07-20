//
//  BCDShareSheet.m
//  BCDShareSheet
//
//  Created by Jake MacMullin on 18/01/12.
//  Copyright (c) 2012 Jake MacMullin.
//

#import "BCDShareableItem.h"

@implementation BCDShareableItem

@synthesize title = _title;
@synthesize shortDescription = _shortDescription;
@synthesize description = _description;
@synthesize imageURLString = _imageURLString;
@synthesize imageData = _imageData;
@synthesize itemURLString = _itemURLString;
@synthesize imageSize = _imageSize;

- (id)initWithTitle:(NSString *)title {
    self = [super init];
    if (self!=nil) {
        [self setTitle:title];
        self.imageSize = CGSizeZero;
    }
    return self;
}

- (void)dealloc {
    
    [self setTitle:nil];
    [self setShortDescription:nil];
    [self setDescription:nil];
    [self setImageURLString:nil];
    [self setImageData:nil];
    [self setItemURLString:nil];
    
    [super dealloc];
}

@end
