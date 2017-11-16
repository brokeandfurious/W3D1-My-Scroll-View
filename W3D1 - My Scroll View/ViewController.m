//
//  ViewController.m
//  W3D1 - My Scroll View
//
//  Created by Murat Ekrem Kolcalar on 11/13/17.
//  Copyright © 2017 murtilicious. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIScrollView *myScrollView = [[UIScrollView alloc]initWithFrame:self.view.bounds];
    myScrollView.backgroundColor = [UIColor brownColor];
    myScrollView.contentOffset = CGPointMake(0, 10);
    [self.view addSubview:myScrollView];
    
    UIView *firstUIView = [[UIView alloc]initWithFrame:self.view.bounds];
    firstUIView.backgroundColor = [UIColor blackColor];
    [myScrollView addSubview: firstUIView];
    firstUIView.alpha = 0.4;

    UIView *redUIView = [[UIView alloc]initWithFrame:CGRectMake(20, 20, 100, 100)];
    redUIView.backgroundColor = [UIColor redColor];
    [myScrollView addSubview:redUIView];
    
    UIView *greenUIView = [[UIView alloc]initWithFrame:CGRectMake(150, 150, 150, 200)];
    greenUIView.backgroundColor = [UIColor greenColor];
    [myScrollView addSubview:greenUIView];
    
    UIView *blueUIView = [[UIView alloc]initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueUIView.backgroundColor = [UIColor blueColor];
    [myScrollView addSubview:blueUIView];
    
    UIView *yellowUIView = [[UIView alloc]initWithFrame: CGRectMake(100, myScrollView.bounds.size.height, 180, 150)];
    yellowUIView.backgroundColor = [UIColor yellowColor];
    [myScrollView addSubview:yellowUIView];
    
    myScrollView.alwaysBounceVertical = YES;
//    myScrollView.contentSize = firstUIView.bounds.size;
    myScrollView.contentSize = CGSizeMake(myScrollView.bounds.size.width, myScrollView.bounds.size.height*2);
    myScrollView.pagingEnabled = YES;
    
}

- (IBAction)panFired:(UIPanGestureRecognizer*)sender {

    if (sender.state == UIGestureRecognizerStateBegan) {
        NSLog(@"Began");
    } else if (sender.state == UIGestureRecognizerStateEnded) {
        NSLog(@"Ended");
    }

}

@end
