//
//  GroupOpacityViewController.m
//  AnimationInIOS9
//
//  Created by Krishana on 11/20/15.
//  Copyright © 2015 Konstant Info Solutions Pvt. Ltd. All rights reserved.
//

#import "GroupOpacityViewController.h"

@interface GroupOpacityViewController ()
@property (weak, nonatomic) IBOutlet UIView *containerView;

@end

@implementation GroupOpacityViewController

+ (UIButton *)customButton
{
    CGRect frame = CGRectMake(0, 0, 150, 50);
    UIButton *button = [[UIButton alloc] initWithFrame:frame];
    button.backgroundColor = [UIColor blueColor];
    button.layer.cornerRadius = 10;
    
    frame = CGRectMake(20, 10, 110, 30);
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.text = @"Hello world";
    label.textAlignment = NSTextAlignmentCenter;
    [button addSubview:label];
    return button;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *button1 = [[self class] customButton];
    button1.center = CGPointMake(50, 50);
    [self.containerView addSubview:button1];
    
    UIButton *button2 = [[self class] customButton];
    button2.center = CGPointMake(300, 50);
    button2.alpha = 0.5;
    [self.containerView addSubview:button2];
    
    //   Not effect, weird
    //   button2.layer.shouldRasterize = YES;
    //   button2.layer.rasterizationScale = [UIScreen mainScreen].scale;
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
