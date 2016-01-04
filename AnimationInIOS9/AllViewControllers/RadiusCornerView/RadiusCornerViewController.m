//
//  RadiusCornerViewController.m
//  AnimationInIOS9
//
//  Created by Krishana on 11/20/15.
//  Copyright © 2015 Konstant Info Solutions Pvt. Ltd. All rights reserved.
//

#import "RadiusCornerViewController.h"

@interface RadiusCornerViewController ()
@property (weak, nonatomic) IBOutlet UIView *layerView1;
@property (weak, nonatomic) IBOutlet UIView *layerView2;
@property (weak, nonatomic) IBOutlet UIView *layerView3;

@end

@implementation RadiusCornerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.layerView1.layer.cornerRadius = 20;
    self.layerView2.layer.cornerRadius = self.layerView2.frame.size.height/2;
    self.layerView3.layer.cornerRadius = 30;

    self.layerView1.layer.borderWidth = 2;
    self.layerView2.layer.borderWidth = 3;
    self.layerView3.layer.borderWidth = 4;
    
    self.layerView2.layer.borderColor = [UIColor whiteColor].CGColor;
    self.layerView1.layer.borderColor = [UIColor redColor].CGColor;
    self.layerView3.layer.borderColor = [UIColor blueColor].CGColor;

    self.layerView2.layer.masksToBounds = YES;
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
