//
//  CALayerDelegateViewController.m
//  AnimationInIOS9
//
//  Created by Krishana on 11/19/15.
//  Copyright © 2015 Konstant Info Solutions Pvt. Ltd. All rights reserved.
//

#import "CALayerDelegateViewController.h"

@interface CALayerDelegateViewController ()
{
    CALayer *blueLayer;
}
@property (weak, nonatomic) IBOutlet UIView *layerView;

@end

@implementation CALayerDelegateViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    blueLayer = [CALayer layer];
    blueLayer.frame = CGRectMake(60, 60, 120, 120);
    blueLayer.backgroundColor = [UIColor blueColor].CGColor;
    blueLayer.contentsScale = [UIScreen mainScreen].scale;
    [self.layerView.layer addSublayer:blueLayer];
    [blueLayer display];
}

-(IBAction)delegateBtnClickedAction:(id)sender
{
    blueLayer = [CALayer layer];
    blueLayer.frame = CGRectMake(60, 60, 120, 120);
    blueLayer.backgroundColor = [UIColor blueColor].CGColor;
    blueLayer.contentsScale = [UIScreen mainScreen].scale;
    blueLayer.delegate = self;
    [self.layerView.layer addSublayer:blueLayer];
    [blueLayer display];
}

- (void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx
{
    CGContextSetLineWidth(ctx, 10);
    CGContextSetStrokeColorWithColor(ctx, [UIColor redColor].CGColor);
    CGContextStrokeEllipseInRect(ctx, layer.bounds);
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
