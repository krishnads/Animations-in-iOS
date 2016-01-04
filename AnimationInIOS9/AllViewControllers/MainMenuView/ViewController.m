//
//  ViewController.m
//  AnimationInIOS9
//
//  Created by Krishana on 11/19/15.
//  Copyright © 2015 Konstant Info Solutions Pvt. Ltd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    menuArray = [NSArray arrayWithObjects:
                 @"BlueLayer ViewController",
                 @"LayerContent ViewController",
                 @"SpriteKit ViewController",
                 @"CALayerDelegate ViewController",
                 @"AnchorPoint ViewController",
                 @"ZPosition ViewController",
                 @"ContainsPoint ViewController",
                 @"Clock ViewController",
                 @"Radius Corner ViewController",
                 @"Draw Shadows ViewController",
                 @"Shadow Path ViewController",
                 @"Layer Mask ViewController",
                 @"Group Opacity ViewController",
                 @"Digital Clock ViewController",
                 @"Compound TransformView Controller",
                 @"SubLayer Transform ViewController",
                 @"Opposite Rotation Arround Z ViewController",
                 @"Cube GLKit View Controller",
                 @"CAShape Layeer ViewController",
                 @"CAText Layer ViewController",
                 @"CATransform Layer ViewController",
                 @"CAGradient Layer ViewController",
                 @"CAReplicator Layer ViewController",
                 @"Reflection ViewController",
                 @"CAScroll Layer ViewController",
                 @"CATiled Layer ViewController",
                 @"CAEmitter Layer ViewController",
                 nil];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return menuArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    return cell;
}

-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.text = [menuArray objectAtIndex:indexPath.row];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:true];
    
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *viewConrol;
    
    switch (indexPath.row)
    {
        case 0:
            viewConrol = [storyBoard instantiateViewControllerWithIdentifier:@"BlueLayerViewController"];
            break;
            
        case 1:
            viewConrol = [storyBoard instantiateViewControllerWithIdentifier:@"LayerContentViewController"];
            break;
            
        case 2:
            viewConrol = [storyBoard instantiateViewControllerWithIdentifier:@"SpriteViewController"];
            break;
        
        case 3:
            viewConrol = [storyBoard instantiateViewControllerWithIdentifier:@"CALayerDelegateViewController"];
            break;
            
        case 4:
            viewConrol = [storyBoard instantiateViewControllerWithIdentifier:@"AnchorPointViewController"];
            break;

        case 5:
            viewConrol = [storyBoard instantiateViewControllerWithIdentifier:@"ZPositionViewController"];
            break;

        case 6:
            viewConrol = [storyBoard instantiateViewControllerWithIdentifier:@"ContainsPointViewController"];
            break;

        case 7:
            viewConrol = [storyBoard instantiateViewControllerWithIdentifier:@"ClockViewController"];
            break;
            
        case 8:
            viewConrol = [storyBoard instantiateViewControllerWithIdentifier:@"RadiusCornerViewController"];
            break;
            
        case 9:
            viewConrol = [storyBoard instantiateViewControllerWithIdentifier:@"DrawShadowsViewController"];
            break;
            
        case 10:
            viewConrol = [storyBoard instantiateViewControllerWithIdentifier:@"ShadowPathViewController"];
            break;
            
        case 11:
            viewConrol = [storyBoard instantiateViewControllerWithIdentifier:@"LayerMaskViewController"];
            break;
            
        case 12:
            viewConrol = [storyBoard instantiateViewControllerWithIdentifier:@"GroupOpacityViewController"];
            break;
    
        case 13:
            viewConrol = [storyBoard instantiateViewControllerWithIdentifier:@"DigitalClockViewController"];
            break;
            
        case 14:
            viewConrol = [storyBoard instantiateViewControllerWithIdentifier:@"CompoundTransformViewController"];
            break;
            
        case 15:
            viewConrol = [storyBoard instantiateViewControllerWithIdentifier:@"SubLayerTransformViewController"];
            break;
            
        case 16:
            viewConrol = [storyBoard instantiateViewControllerWithIdentifier:@"OppositeRotationArroundZViewController"];
            break;
            
        case 17:
            viewConrol = [storyBoard instantiateViewControllerWithIdentifier:@"CubeGLKitViewController"];
            break;
        
        case 18:
            viewConrol = [storyBoard instantiateViewControllerWithIdentifier:@"CAShapeLayeerViewController"];
            break;
            
        case 19:
            viewConrol = [storyBoard instantiateViewControllerWithIdentifier:@"CATextLayerViewController"];
            break;
            
        case 20:
            viewConrol = [storyBoard instantiateViewControllerWithIdentifier:@"CATransformLayerViewController"];
            break;
            
        case 21:
            viewConrol = [storyBoard instantiateViewControllerWithIdentifier:@"CAGradientLayerViewController"];
            break;
            
        case 22:
            viewConrol = [storyBoard instantiateViewControllerWithIdentifier:@"CAReplicatorLayerViewController"];
            break;
            
        case 23:
            viewConrol = [storyBoard instantiateViewControllerWithIdentifier:@"ReflectionViewController"];
            break;
            
        case 24:
            viewConrol = [storyBoard instantiateViewControllerWithIdentifier:@"CAScrollLayerViewController"];
            break;
            
        case 25:
            viewConrol = [storyBoard instantiateViewControllerWithIdentifier:@"CATiledLayerViewController"];
            break;
       
        case 26:
            viewConrol = [storyBoard instantiateViewControllerWithIdentifier:@"CAEmitterLayerViewController"];
            break;
            
            
        default:
            break;
    }
    
    [self.navigationController pushViewController:viewConrol animated:true];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
