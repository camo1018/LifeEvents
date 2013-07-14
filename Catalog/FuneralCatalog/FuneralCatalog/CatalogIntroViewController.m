//
//  CatalogIntroViewController.m
//  FuneralCatalog
//
//  Created by Paul Park on 2/20/12.
//  Copyright (c) 2012 SC Governor's School for Science and Mathematics. All rights reserved.
//

#import "CatalogIntroViewController.h"

@implementation CatalogIntroViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"movie" ofType:@"mp4"];
    
    movieController = [[MPMoviePlayerController alloc] initWithContentURL:[NSURL fileURLWithPath:filePath]];
    movieController.controlStyle = MPMovieControlStyleEmbedded;
    
    [movieController prepareToPlay];
    [movieController play];
    [self.view addSubview:movieController.view];
    
    movieController.view.frame = CGRectMake(0,0, 1024, 420);

    
}

- (void)viewDidDisappear:(BOOL)animated
{
    [movieController stop];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft);
}

@end
