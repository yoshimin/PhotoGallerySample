//
//  YSViewController.m
//  ScrollViewTest
//
//  Created by 新谷　よしみ on 2013/05/08.
//  Copyright (c) 2013年 新谷　よしみ. All rights reserved.
//

#import "YSViewController.h"
#import "YSScrollView.h"

@interface YSViewController ()

@end

@implementation YSViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
    [self setScrollView];
}

- (void)setScrollView {
    
    NSArray *images = [[NSArray alloc] initWithObjects:@"img001.jpg", @"img002.jpg", @"img003.jpg", @"img004.jpg", nil];
    NSInteger pageNumber = images.count;
    
    //make a ScrollView for paging
    UIScrollView *mainScrollView = [[UIScrollView alloc] init];
    mainScrollView.frame = self.view.bounds;
    mainScrollView.contentSize = CGSizeMake(mainScrollView.bounds.size.width*pageNumber, mainScrollView.bounds.size.height);
    mainScrollView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    mainScrollView.pagingEnabled = YES;
    mainScrollView.bouncesZoom = YES;
    mainScrollView.showsHorizontalScrollIndicator = NO;
    mainScrollView.showsVerticalScrollIndicator = NO;
    
    for (int i = 0; i < pageNumber ; i++){
        
        //make a ScrollView for zoom on mainScrollView
        UIImage *image = [UIImage imageNamed:[images objectAtIndex:i]];
        YSScrollView *contentScrollView = [[YSScrollView alloc] initWithImage:image];
        contentScrollView.frame = CGRectMake(mainScrollView.bounds.size.width * i, 0, mainScrollView.bounds.size.width, mainScrollView.bounds.size.height);
        [mainScrollView addSubview:contentScrollView];
    }
    
    [self.view addSubview:mainScrollView];
}

@end
