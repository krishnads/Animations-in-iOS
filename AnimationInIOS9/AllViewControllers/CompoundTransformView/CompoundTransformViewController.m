//
//  CompoundTransformViewController.m
//  AnimationInIOS9
//
//  Created by Krishana on 11/20/15.
//  Copyright © 2015 Konstant Info Solutions Pvt. Ltd. All rights reserved.
//

#import "CompoundTransformViewController.h"

@interface CompoundTransformViewController ()
@property (weak, nonatomic) IBOutlet UIView *layerView;

@end

@implementation CompoundTransformViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //
    self.layerView.layer.contents = (__bridge id)[UIImage imageNamed:@"Snowman"].CGImage;
    
        //[self compoundTransform];
    [self makeShear];
    //[self threeDTransform];
}

- (void)compoundTransform
{
    CGAffineTransform transform = CGAffineTransformIdentity;
    NSLog(@"%@", NSStringFromCGAffineTransform(transform));
    
    transform = CGAffineTransformScale(transform, 1.6, 1.6);
    NSLog(@"%@", NSStringFromCGAffineTransform(transform));
    
    transform = CGAffineTransformRotate(transform, M_PI / 180.0 * 20.0);
    NSLog(@"%@", NSStringFromCGAffineTransform(transform));
    
    transform = CGAffineTransformTranslate(transform, 50, 0);
    NSLog(@"%@", NSStringFromCGAffineTransform(transform));
    
    self.layerView.layer.affineTransform = transform;
}

CGAffineTransform CGAffineTransformMakeShear(CGFloat x, CGFloat y)
{
    CGAffineTransform transform = CGAffineTransformIdentity;
    transform.c = -x;
    transform.b = y;
    return transform;
}

- (void)makeShear
{
    self.layerView.layer.affineTransform = CGAffineTransformMakeShear(1, 0);
}

- (void)threeDTransform
{
    CATransform3D transform = CATransform3DIdentity;
    transform.m34 = - 1.0 / 500;
    transform = CATransform3DRotate(transform, M_PI_4, 0, 1, 0);
    self.layerView.layer.transform = transform;
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
