//
//  DigitalClockViewController.m
//  AnimationInIOS9
//
//  Created by Krishana on 11/20/15.
//  Copyright © 2015 Konstant Info Solutions Pvt. Ltd. All rights reserved.
//

#import "DigitalClockViewController.h"

@interface DigitalClockViewController ()

@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *digitViews;

@property (nonatomic, strong) NSTimer *timer;

@end

@implementation DigitalClockViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImage *digits = [UIImage imageNamed:@"Digits"];
    
    for (UIView *view in self.digitViews)
    {
        view.layer.contents = (__bridge id)digits.CGImage;
        view.layer.contentsRect = CGRectMake(0, 0, 0.1, 1.0);
        view.layer.contentsGravity = kCAGravityResizeAspect;
        view.layer.backgroundColor = [UIColor clearColor].CGColor;
        view.layer.magnificationFilter = kCAFilterNearest;
    }
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(tick) userInfo:nil repeats:YES];
    [self tick];
}

- (void)setDigit:(NSInteger)digit forView:(UIView *)view
{
    view.layer.contentsRect = CGRectMake(digit * 0.1, 0, 0.1, 1);
}

- (void)tick
{
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    
    NSUInteger units = NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    
    NSDateComponents *compoents = [calendar components:units fromDate:[NSDate date]];
    [self setDigit:compoents.hour / 10 forView:self.digitViews[0]];
    [self setDigit:compoents.hour % 10 forView:self.digitViews[1]];
    
    [self setDigit:compoents.minute / 10 forView:self.digitViews[2]];
    [self setDigit:compoents.minute % 10 forView:self.digitViews[3]];
    
    [self setDigit:compoents.second / 10 forView:self.digitViews[4]];
    [self setDigit:compoents.second %10 forView:self.digitViews[5]];
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
