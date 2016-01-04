//
//  LayerMaskViewController.m
//  AnimationInIOS9
//
//  Created by Krishana on 11/20/15.
//  Copyright © 2015 Konstant Info Solutions Pvt. Ltd. All rights reserved.
//

#import "LayerMaskViewController.h"

@interface LayerMaskViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation LayerMaskViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CALayer *maskLayer = [CALayer layer];
    maskLayer.contents = (__bridge id)[UIImage imageNamed:@"Cone"].CGImage;
    maskLayer.frame = self.imageView.bounds;
    self.imageView.layer.mask = maskLayer;

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
