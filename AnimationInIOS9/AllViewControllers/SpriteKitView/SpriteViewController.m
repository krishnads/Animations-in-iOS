//
//  SpriteViewController.m
//  AnimationInIOS9
//
//  Created by Krishana on 11/19/15.
//  Copyright © 2015 Konstant Info Solutions Pvt. Ltd. All rights reserved.
//

#import "SpriteViewController.h"

@interface SpriteViewController ()

@property (weak, nonatomic) IBOutlet UIView *firstView;
@property (weak, nonatomic) IBOutlet UIView *secondView;
@property (weak, nonatomic) IBOutlet UIView *thirdView;
@property (weak, nonatomic) IBOutlet UIView *fourthView;
@end

@implementation SpriteViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImage *image = [UIImage imageNamed:@"Sprites"];
    
    [self addSpriteImage:image WithContentRect:CGRectMake(0, 0, 0.5, 0.5) toLayer:self.firstView.layer];
    
    [self addSpriteImage:image WithContentRect:CGRectMake(0.5, 0, 0.5, 0.5) toLayer:self.secondView.layer];
    
    [self addSpriteImage:image WithContentRect:CGRectMake(0, 0.5, 0.5, 0.5) toLayer:self.thirdView.layer];
    
    [self addSpriteImage:image WithContentRect:CGRectMake(0.5, 0.5, 0.5, 0.5) toLayer:self.fourthView.layer];
}

- (void)addSpriteImage:(UIImage *)image WithContentRect:(CGRect)rect toLayer:(CALayer *)layer
{
    layer.contents = (__bridge id)image.CGImage;
    layer.contentsGravity = kCAGravityResizeAspect;
    layer.contentsScale = image.scale;
    layer.contentsRect = rect;
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
