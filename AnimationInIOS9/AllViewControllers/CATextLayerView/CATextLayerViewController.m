//
//  CATextLayerViewController.m
//  AnimationInIOS9
//
//  Created by Krishana on 11/20/15.
//  Copyright © 2015 Konstant Info Solutions Pvt. Ltd. All rights reserved.
//

#import "CATextLayerViewController.h"
#import <CoreText/CoreText.h>

@interface CATextLayerViewController ()
@property (weak, nonatomic) IBOutlet UIView *labelView;
@property (weak, nonatomic) IBOutlet UIView *labelView1;

@end

@implementation CATextLayerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CATextLayer *textLayer = [CATextLayer layer];
    textLayer.frame = self.labelView.bounds;
    [self.labelView.layer addSublayer:textLayer];
    
    textLayer.foregroundColor = [UIColor blackColor].CGColor;
    textLayer.alignmentMode = kCAAlignmentJustified;
    textLayer.wrapped = YES;
    textLayer.contentsScale = [UIScreen mainScreen].scale;
    
    UIFont *font = [UIFont systemFontOfSize:15];
    
    CFStringRef fontName = (__bridge CFStringRef)font.fontName;
    CGFontRef fontRef = CGFontCreateWithFontName(fontName);
    textLayer.font = fontRef;
    textLayer.fontSize = font.pointSize;
    CGFontRelease(fontRef);
    
    NSString *text = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque massa arcu, eleifend vel varius in, facilisis pulvinar leo. Nunc quis nunc at mauris pharetra condimentum ut ac neque. Nunc Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque massa arcu, eleifend vel varius in, facilisis pulvinar leo. Nunc quis nunc at mauris pharetra condimentum ut ac neque. Nunc Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque massa arcu, eleifend vel varius in, facilisis pulvinar leo. Nunc quis nunc at mauris pharetra condimentum ut ac neque. Nunc Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque massa arcu, eleifend vel varius in, facilisis pulvinar leo. Nunc quis nunc at mauris pharetra condimentum ut ac neque. Nunc ";
    
    textLayer.string = text;
    
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    
    CATextLayer *textLayer1 = [CATextLayer layer];
    textLayer1.frame = self.labelView1.bounds;
    textLayer1.contentsScale = [UIScreen mainScreen].scale;
    [self.labelView1.layer addSublayer:textLayer1];
    
    textLayer1.alignmentMode = kCAAlignmentJustified;
    textLayer1.wrapped = YES;
    
    NSString *text1 = @"Lorem ipsum dolor sit amet, consectetur adipiscing \n elit. Quisque massa arcu, eleifend vel varius in, facilisis pulvinar \n leo. Nunc quis nunc at mauris pharetra condimentum ut ac neque. Nunc \n elementum, libero ut porttitor dictum, diam odio lobortis";
    
    UIFont *font1 = [UIFont systemFontOfSize:15];
    NSMutableAttributedString *string = nil;
    string = [[NSMutableAttributedString alloc] initWithString:text1];
    CFStringRef fontName1 = (__bridge CFStringRef)font1.fontName;
    CGFloat fontSize = font1.pointSize;
    CTFontRef fontRef1 = CTFontCreateWithName(fontName1, fontSize, NULL);
    
    NSDictionary *attrs = @{
                            (__bridge id)kCTForegroundColorAttributeName: (__bridge id)[UIColor blackColor].CGColor,
                            (__bridge id)kCTForegroundColorAttributeName: (__bridge id)fontRef1};
    [string setAttributes:attrs range:NSMakeRange(0, text1.length)];
    
    attrs = @{
              (__bridge id)kCTForegroundColorAttributeName: (__bridge id)[UIColor redColor].CGColor,
              (__bridge id)kCTForegroundColorAttributeName: (__bridge id)fontRef1,
              (__bridge id)kCTUnderlineStyleAttributeName: @(kCTUnderlineStyleSingle)
              };
    [string setAttributes:attrs range:NSMakeRange(6, 5)];
    
    CFRelease(fontRef1);
    
    textLayer1.string = string;
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
