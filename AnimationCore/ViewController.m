//
//  ViewController.m
//  AnimationCore
//
//  Created by Sami on 2/19/18.
//  Copyright © 2018 Sami. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *secCar;
@property (weak, nonatomic) IBOutlet UIButton *p1;
@property (weak, nonatomic) IBOutlet UIButton *p2;
@property (weak, nonatomic) IBOutlet UIButton *p3;
@property (weak, nonatomic) IBOutlet UIButton *p4;

@end

@implementation ViewController

-(void)initAmin {
    
    // first animation
    CABasicAnimation *animation = [CABasicAnimation animation];
    animation.keyPath = @"position.x";
    animation.fromValue = @15;
    //animation.toValue = @455;
    //animation.duration = 2;
    animation.fillMode = kCAFillModeForwards;
    animation.removedOnCompletion = NO;
    [animation setDuration:12.0];
    [animation setBeginTime:0.0];
    
    CABasicAnimation *animation1 = [CABasicAnimation animation];
    animation1.keyPath = @"position.y";
    animation1.fromValue = @0;
    //animation.toValue = @455;
    [animation1 setDuration:8.0];
    [animation1 setBeginTime:0.0];
    
    CABasicAnimation *animation2 = [CABasicAnimation animation];
    animation2.keyPath = @"position.y";
    animation2.fromValue = @5;
    //animation.toValue = @455;
    [animation2 setDuration:6.0];
    [animation2 setBeginTime:0.0];
    
    CABasicAnimation *animation3 = [CABasicAnimation animation];
    animation3.keyPath = @"position.y";
    animation3.fromValue = @9;
    //animation.toValue = @455;
    [animation3 setDuration:10.0];
    [animation3 setBeginTime:0.0];
    
    CABasicAnimation *animation4 = [CABasicAnimation animation];
    animation4.keyPath = @"position.y";
    animation4.fromValue = @10;
    //animation.toValue = @455;
    [animation4 setDuration:8.0];
    [animation4 setBeginTime:0.0];
    
    CABasicAnimation *animation5 = [CABasicAnimation animation];
    animation5.keyPath = @"position.x";
    animation5.fromValue = @0;
    //animation.toValue = @455;
    [animation5 setDuration:8.0];
    [animation5 setBeginTime:0.0];
    
    CAAnimationGroup *group = [CAAnimationGroup animation];
    [group setDuration:12.0];
    [group setAnimations:[NSArray arrayWithObjects:animation1, animation, nil]];
    
    [_recket.layer addAnimation:group forKey:@"basic"];
    
    [_secCar.layer addAnimation:animation1 forKey:@"basic"];
    [_p1.layer addAnimation:animation2 forKey:@"basic"];
    [_p2.layer addAnimation:animation3 forKey:@"basic"];
    [_p3.layer addAnimation:animation4 forKey:@"basic"];
    [_p4.layer addAnimation:animation5 forKey:@"basic"];
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self initAmin];
   /* second anim
    CAKeyframeAnimation *animatio = [CAKeyframeAnimation animation];
    animatio.keyPath = @"position.y";
    animatio.values = @[ @0, @10, @-10, @10, @0 ];
    animatio.keyTimes = @[ @0, @(1 / 6.0), @(3 / 6.0), @(5 / 6.0), @1 ];
    animatio.duration = 10;
    
    animatio.additive = YES;
    
    [_recket.layer addAnimation:animatio forKey:@"shake"];
    */
    
    /* third anim.....
    CGRect boundingRect = CGRectMake(-150, -150, 300, 300);
    
    CAKeyframeAnimation *orbit = [CAKeyframeAnimation animation];
    orbit.keyPath = @"position";
    orbit.path = CFAutorelease(CGPathCreateWithEllipseInRect(boundingRect, NULL));
    orbit.duration = 4;
    orbit.additive = YES;
    orbit.repeatCount = HUGE_VALF;
    orbit.calculationMode = kCAAnimationPaced;
    orbit.rotationMode = kCAAnimationRotateAuto;
    
    [_recket.layer addAnimation:orbit forKey:@"basic"];
  */
}


@end
