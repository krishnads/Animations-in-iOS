//
//  AnchorPointViewController.m
//  AnimationInIOS9
//
//  Created by Krishana on 11/19/15.
//  Copyright © 2015 Konstant Info Solutions Pvt. Ltd. All rights reserved.
//

#import "AnchorPointViewController.h"

@interface AnchorPointViewController ()
{
    CALayer *layer;
}

@property (weak, nonatomic) IBOutlet UIView *layerView;

@end

@implementation AnchorPointViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    layer = [CALayer layer];
    layer.frame = CGRectMake(30, 30, 60, 60);
    layer.backgroundColor = [UIColor greenColor].CGColor;
    //layer.anchorPoint = CGPointMake(1,1);
    [self.layerView.layer addSublayer:layer];
}

-(IBAction)changeAnchorAction:(id)sender
{
    UIButton *btn = (UIButton *) sender;
    
    if (btn.tag == 1)
    {
        layer.anchorPoint = CGPointMake(1, 1);
    }
    else if (btn.tag == 2)
    {
        layer.anchorPoint = CGPointMake(0, 1);
    }
    else if (btn.tag == 3)
    {
        layer.anchorPoint = CGPointMake(1, 0);
    }
    else if (btn.tag == 4)
    {
        layer.anchorPoint = CGPointMake(0, 0);
    }
    else if (btn.tag == 5)
    {
        layer.anchorPoint = CGPointMake(-1, 1);
    }
    else if (btn.tag == 6)
    {
        layer.anchorPoint = CGPointMake(-1, 0);
    }
    else if (btn.tag == 7)
    {
        layer.anchorPoint = CGPointMake(-1, -1);
    }
    else if (btn.tag == 8)
    {
        layer.anchorPoint = CGPointMake(0, -1);
    }
    else if (btn.tag == 9)
    {
        layer.anchorPoint = CGPointMake(1, -1);
    }
    else if (btn.tag == 10)
    {
        layer.anchorPoint = CGPointMake(2, -1);
    }
    else if (btn.tag == 11)
    {
        layer.anchorPoint = CGPointMake(2, 0);
    }
    else if (btn.tag == 12)
    {
        layer.anchorPoint = CGPointMake(2, 1);
    }
    else if (btn.tag == 13)
    {
        layer.anchorPoint = CGPointMake(2, 2);
    }
    else if (btn.tag == 14)
    {
        layer.anchorPoint = CGPointMake(1, 2);
    }
    else if (btn.tag == 15)
    {
        layer.anchorPoint = CGPointMake(0, 2);
    }
    else if (btn.tag == 16)
    {
        layer.anchorPoint = CGPointMake(-1, 2);
    }
    
    [self.layerView.layer addSublayer:layer];
    
        NSLog(@"frame: %@", NSStringFromCGRect(layer.frame));
        NSLog(@"bounds: %@", NSStringFromCGRect(layer.bounds));
        NSLog(@"position: %@", NSStringFromCGPoint(layer.position));
        NSLog(@"anchorPoint: %@", NSStringFromCGPoint(layer.anchorPoint));
}



- (void)didReceiveMemoryWarning {
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
