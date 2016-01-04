//
//  OppositeRotationArroundZViewController.m
//  AnimationInIOS9
//
//  Created by Krishana on 11/20/15.
//  Copyright © 2015 Konstant Info Solutions Pvt. Ltd. All rights reserved.
//

#import "OppositeRotationArroundZViewController.h"

@interface OppositeRotationArroundZViewController ()
@property (weak, nonatomic) IBOutlet UIView *innerView;
@property (weak, nonatomic) IBOutlet UIView *outerView;
@end

@implementation OppositeRotationArroundZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
#pragma mark: -Rotate Around Z-Axis
//    CATransform3D outer = CATransform3DMakeRotation(M_PI_4, 0, 0, 1);
//    self.outerView.layer.transform = outer;
//    
//    CATransform3D inner = CATransform3DMakeRotation( - M_PI_4, 0, 0, 1);
//    self.innerView.layer.transform = inner;
    
    
#pragma : Rotate Around Y-Axis

    CATransform3D outer = CATransform3DIdentity;
    outer.m34 = - 1.0 / 500;
    outer = CATransform3DRotate(outer, M_PI_4, 0, 1, 0);
    self.outerView.layer.transform = outer;
    
    CATransform3D inner = CATransform3DIdentity;
    inner.m34 = - 1.0 / 500;
    inner = CATransform3DRotate(inner, -M_PI_4, 0, 1, 0);
    self.innerView.layer.transform = inner;
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
