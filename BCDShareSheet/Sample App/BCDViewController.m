//
//  BCDViewController.m
//  BCDShareSheet
//
//  Created by Jake MacMullin on 18/01/12.
//  Copyright (c) 2012 Jake MacMullin.
//

#import "BCDViewController.h"
#import "BCDShareSheet.h"
#import "BCDShareableItem.h"

@implementation BCDViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

#pragma mark - Interface Actions

- (IBAction)shareIt:(id)sender
{
    BCDShareableItem *item = [[BCDShareableItem alloc] initWithTitle:@"Title"];
    item.shortDescription = @"shortDescription";
    item.description = @"description";
    [item setImageURLString:@"http://farm2.staticflickr.com/1390/4611054437_efb54d73af_t.jpg"];
    /*
    UIImage *img = [UIImage imageNamed: @"Villa1.jpg"];
    NSData *imgData = UIImageJPEGRepresentation(img, 1.0);    
    [item setImageData: imgData];
    */ 
    UIActionSheet *sheet = [[BCDShareSheet sharedSharer] sheetForSharing:item completion:^(BCDResult result) {
        if (result==BCDResultSuccess) {
            NSLog(@"Yay!");
        }
    }];
    
    [sheet showInView:self.view];
    [item release];
}

@end
