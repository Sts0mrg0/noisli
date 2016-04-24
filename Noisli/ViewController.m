//
//  ViewController.m
//  Noisli
//
//  Created by Amirkhan on 2/27/15.
//  Copyright (c) 2015 Amirkhan. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>


@interface ViewController ()

@property (nonatomic, strong) AVAudioPlayer *rainPlayer;
@property (nonatomic, strong) AVAudioPlayer *stormPlayer;
@property (nonatomic, strong) AVAudioPlayer *windPlayer;
@property (nonatomic, strong) AVAudioPlayer *forestPlayer;
@property (nonatomic, strong) AVAudioPlayer *leafPlayer;
@property (nonatomic, strong) AVAudioPlayer *flamePlayer;
@property (nonatomic, strong) AVAudioPlayer *coffeePlayer;
@property (nonatomic, strong) AVAudioPlayer *oceanPlayer;
@property (nonatomic) BOOL rainisPlaying;
@property (nonatomic) BOOL stormisPlaying;
@property (nonatomic) BOOL windisPlaying;
@property (nonatomic) BOOL forestisPlaying;
@property (nonatomic) BOOL leafisPlaying;
@property (nonatomic) BOOL flameisPlaying;
@property (nonatomic) BOOL coffeeisPlaying;
@property (nonatomic) BOOL oceanisPlaying;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    

    [self.rainPlayer prepareToPlay];
    
}


-(IBAction)rain:(id)sender{
    
    
    
    if(_rain.alpha != 1)
    _rain.alpha = 1;
    else
    _rain.alpha = 0.5;
    
    
    NSBundle *mainBundle = [NSBundle mainBundle];

    NSString *filePath = [mainBundle pathForResource:@"rain" ofType:@"mp3"];
    
    NSData *fileData = [NSData dataWithContentsOfFile:filePath];
    
    NSError *error = nil;
    
    self.rainPlayer = [[AVAudioPlayer alloc] initWithData:fileData
                                                    error:&error];
    self.rainPlayer.volume = 2.6;
    self.rainPlayer.numberOfLoops = -1;
    
    if (self.rainisPlaying)
    {
        // Music is currently playing
        NSLog(@"Stopping Music");
        [self.rainPlayer stop];
        self.rainisPlaying = NO;
    } else
    {
        // Music is currenty paused/stopped
        NSLog(@"Playing music");
        [self.rainPlayer play];
        self.rainisPlaying = YES;
    }

}



-(IBAction)storm:(id)sender{
    
    if(_storm.alpha != 1)
        _storm.alpha = 1;
    else
        _storm.alpha = 0.5;
    
    NSBundle *mainBundle = [NSBundle mainBundle];
    
    NSString *filePath = [mainBundle pathForResource:@"storm" ofType:@"mp3"];
    
    NSData *fileData = [NSData dataWithContentsOfFile:filePath];
    
    NSError *error = nil;
    
    self.stormPlayer = [[AVAudioPlayer alloc] initWithData:fileData
                                                    error:&error];
    self.stormPlayer.volume = 0.2;
    self.stormPlayer.numberOfLoops = -1;
    
    if (self.stormisPlaying)
    {
        // Music is currently playing
        NSLog(@"Stopping Music");
        [self.stormPlayer stop];
        self.stormisPlaying = NO;
    } else
    {
        // Music is currenty paused/stopped
        NSLog(@"Playing music");
        [self.stormPlayer play];
        self.stormisPlaying = YES;
    }
    
}
-(IBAction)wind:(id)sender{
    
    if(_wind.alpha != 1)
        _wind.alpha = 1;
    else
        _wind.alpha = 0.5;
    NSBundle *mainBundle = [NSBundle mainBundle];
    
    NSString *filePath = [mainBundle pathForResource:@"wind" ofType:@"mp3"];
    
    NSData *fileData = [NSData dataWithContentsOfFile:filePath];
    
    NSError *error = nil;
    
    self.windPlayer = [[AVAudioPlayer alloc] initWithData:fileData
                                                    error:&error];
    self.windPlayer.volume = 0.4;
    self.windPlayer.numberOfLoops = -1;
    
    if (self.windisPlaying)
    {
        // Music is currently playing
        NSLog(@"Stopping Music");
        [self.windPlayer stop];
        self.windisPlaying = NO;
    } else
    {
        // Music is currenty paused/stopped
        NSLog(@"Playing music");
        [self.windPlayer play];
        self.windisPlaying = YES;
    }
    
}
-(IBAction)forest:(id)sender{
    
    if(_forest.alpha != 1)
        _forest.alpha = 1;
    else
        _forest.alpha = 0.5;
    NSBundle *mainBundle = [NSBundle mainBundle];
    
    NSString *filePath = [mainBundle pathForResource:@"forest" ofType:@"mp3"];
    
    NSData *fileData = [NSData dataWithContentsOfFile:filePath];
    
    NSError *error = nil;
    
    self.forestPlayer = [[AVAudioPlayer alloc] initWithData:fileData
                                                    error:&error];
    self.forestPlayer.volume = 0.7;
    self.forestPlayer.numberOfLoops = -1;
    
    if (self.forestisPlaying)
    {
        // Music is currently playing
        NSLog(@"Stopping Music");
        [self.forestPlayer stop];
        self.forestisPlaying = NO;
    } else
    {
        // Music is currenty paused/stopped
        NSLog(@"Playing music");
        [self.forestPlayer play];
        self.forestisPlaying = YES;
    }
    
}
-(IBAction)leaf:(id)sender{
    
    if(_leaf.alpha != 1)
        _leaf.alpha = 1;
    else
        _leaf.alpha = 0.5;
    NSBundle *mainBundle = [NSBundle mainBundle];
    
    NSString *filePath = [mainBundle pathForResource:@"leaf" ofType:@"mp3"];
    
    NSData *fileData = [NSData dataWithContentsOfFile:filePath];
    
    NSError *error = nil;
    
    self.leafPlayer = [[AVAudioPlayer alloc] initWithData:fileData
                                                    error:&error];
    self.leafPlayer.volume = 0.7;
    self.leafPlayer.numberOfLoops = -1;
    
    if (self.leafisPlaying)
    {
        // Music is currently playing
        NSLog(@"Stopping Music");
        [self.leafPlayer stop];
        self.leafisPlaying = NO;
    } else
    {
        // Music is currenty paused/stopped
        NSLog(@"Playing music");
        [self.leafPlayer play];
        self.leafisPlaying = YES;
    }
    
}
-(IBAction)flame:(id)sender{
    
    if(_flame.alpha != 1)
        _flame.alpha = 1;
    else
        _flame.alpha = 0.5;
    
    NSBundle *mainBundle = [NSBundle mainBundle];
    
    NSString *filePath = [mainBundle pathForResource:@"flame" ofType:@"mp3"];
    
    NSData *fileData = [NSData dataWithContentsOfFile:filePath];
    
    NSError *error = nil;
    
    self.flamePlayer = [[AVAudioPlayer alloc] initWithData:fileData
                                                      error:&error];
    self.flamePlayer.volume = 0.4;
    self.flamePlayer.numberOfLoops = -1;
    
    if (self.flameisPlaying)
    {
        // Music is currently playing
        NSLog(@"Stopping Music");
        [self.flamePlayer stop];
        self.flameisPlaying = NO;
    } else
    {
        // Music is currenty paused/stopped
        NSLog(@"Playing music");
        [self.flamePlayer play];
        self.flameisPlaying = YES;
    }

    
}
-(IBAction)coffee:(id)sender{
    
    if(_coffee.alpha != 1)
        _coffee.alpha = 1;
    else
        _coffee.alpha = 0.5;
    
    NSBundle *mainBundle = [NSBundle mainBundle];
    
    NSString *filePath = [mainBundle pathForResource:@"coffee" ofType:@"mp3"];
    
    NSData *fileData = [NSData dataWithContentsOfFile:filePath];
    
    NSError *error = nil;
    
    self.coffeePlayer = [[AVAudioPlayer alloc] initWithData:fileData
                                                    error:&error];
    self.coffeePlayer.volume = 0.3;
    self.coffeePlayer.numberOfLoops = -1;
    
    if (self.coffeeisPlaying)
    {
        // Music is currently playing
        NSLog(@"Stopping Music");
        [self.coffeePlayer stop];
        self.coffeeisPlaying = NO;
    } else
    {
        // Music is currenty paused/stopped
        NSLog(@"Playing music");
        [self.coffeePlayer play];
        self.coffeeisPlaying = YES;
    }
    
}
-(IBAction)ocean:(id)sender{
    
    if(_ocean.alpha != 1)
        _ocean.alpha = 1;
    else
        _ocean.alpha = 0.5;
    
    NSBundle *mainBundle = [NSBundle mainBundle];
    
    NSString *filePath = [mainBundle pathForResource:@"ocean" ofType:@"mp3"];
    
    NSData *fileData = [NSData dataWithContentsOfFile:filePath];
    
    NSError *error = nil;
    
    self.oceanPlayer = [[AVAudioPlayer alloc] initWithData:fileData
                                                    error:&error];
    self.oceanPlayer.volume = 0.7;
    self.oceanPlayer.numberOfLoops = -1;
    
    if (self.oceanisPlaying)
    {
        // Music is currently playing
        NSLog(@"Stopping Music");
        [self.oceanPlayer stop];
        self.oceanisPlaying = NO;
    } else
    {
        // Music is currenty paused/stopped
        NSLog(@"Playing music");
        [self.oceanPlayer play];
        self.oceanisPlaying = YES;
    }
    
}

- (void) doBackgroundColorAnimation {
    static NSInteger i = 0;
    NSArray *colors = [NSArray arrayWithObjects:[UIColor redColor], [UIColor greenColor], [UIColor blueColor], [UIColor whiteColor], [UIColor blackColor], nil];
    
    if(i >= [colors count]) {
        i = 0;
    }
    
    [UIView animateWithDuration:2.0f animations:^{
        self.view.backgroundColor = [colors objectAtIndex:i];
    } completion:^(BOOL finished) {
        ++i;
        [self doBackgroundColorAnimation];
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
