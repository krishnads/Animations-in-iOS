//
//  SubLayerTransformViewController.m
//  AnimationInIOS9
//
//  Created by Krishana on 11/20/15.
//  Copyright © 2015 Konstant Info Solutions Pvt. Ltd. All rights reserved.
//

#import "SubLayerTransformViewController.h"

@interface SubLayerTransformViewController ()

@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet UIView *layerView1;
@property (weak, nonatomic) IBOutlet UIView *layerView2;

@end

@implementation SubLayerTransformViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    id image = (__bridge id)[UIImage imageNamed:@"Snowman"].CGImage;
    self.layerView1.layer.contents = image;
    self.layerView2.layer.contents = image;
    
    CATransform3D perspective = CATransform3DIdentity;
    perspective.m34 = - 1.0 / 300;
    self.containerView.layer.sublayerTransform = perspective;
    
    CATransform3D transform1 = CATransform3DMakeRotation(M_PI_4, 0, 1, 0);
    self.layerView1.layer.transform = transform1;
    
    CATransform3D transform2 = CATransform3DMakeRotation(- M_PI_4, 0, 1, 0);
    self.layerView2.layer.transform = transform2;
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
