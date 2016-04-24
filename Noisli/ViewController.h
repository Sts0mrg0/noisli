//
//  ViewController.h
//  Noisli
//
//  Created by Amirkhan on 2/27/15.
//  Copyright (c) 2015 Amirkhan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController{


    AVAudioPlayer *player;}

@property (weak, nonatomic) IBOutlet UIButton *rain;
@property (weak, nonatomic) IBOutlet UIButton *storm;
@property (weak, nonatomic) IBOutlet UIButton *wind;
@property (weak, nonatomic) IBOutlet UIButton *forest;
@property (weak, nonatomic) IBOutlet UIButton *leaf;
@property (weak, nonatomic) IBOutlet UIButton *flame;
@property (weak, nonatomic) IBOutlet UIButton *coffee;
@property (weak, nonatomic) IBOutlet UIButton *ocean;

-(IBAction)rain:(id)sender;
-(IBAction)storm:(id)sender;
-(IBAction)wind:(id)sender;
-(IBAction)forest:(id)sender;
-(IBAction)leaf:(id)sender;
-(IBAction)flame:(id)sender;
-(IBAction)coffee:(id)sender;
-(IBAction)ocean:(id)sender;



@end

