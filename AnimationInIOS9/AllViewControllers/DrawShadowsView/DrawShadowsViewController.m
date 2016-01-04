//
//  DrawShadowsViewController.m
//  AnimationInIOS9
//
//  Created by Krishana on 11/20/15.
//  Copyright © 2015 Konstant Info Solutions Pvt. Ltd. All rights reserved.
//

#import "DrawShadowsViewController.h"

@interface DrawShadowsViewController ()

@property (weak, nonatomic) IBOutlet UIView *leftLayerView;
@property (weak, nonatomic) IBOutlet UIView *rightLayerView;

@end

@implementation DrawShadowsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.leftLayerView.layer.shadowOpacity = 1;
    self.leftLayerView.layer.shadowOffset = CGSizeMake(5, 5);
    
    CALayer *layer = self.rightLayerView.layer;
    layer.shadowOffset = CGSizeMake(1, 3);
    layer.shadowColor = [UIColor blackColor].CGColor;
    layer.shadowRadius = self.rightLayerView.frame.size.height/4;
    layer.shadowOpacity = 1;
    layer.shadowPath = [UIBezierPath bezierPathWithRect:layer.bounds].CGPath;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
