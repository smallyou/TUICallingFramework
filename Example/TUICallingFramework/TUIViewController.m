//
//  TUIViewController.m
//  TUICallingFramework
//
//  Created by harvychen on 12/01/2021.
//  Copyright (c) 2021 harvychen. All rights reserved.
//

#import "TUIViewController.h"
#import <TUICallingFramework/TUICallingFramework.h>

@interface TUIViewController ()

@end

@implementation TUIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [TUILogin initWithSdkAppID:1400187352];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    [TUILogin login:@"admin" userSig:@"eJyrVgrxCdYrSy1SslIy0jNQ0gHzM1NS80oy0zLBwokpuZl5UInilOzEgoLMFCUrQxMDA0MLc2NTI4hMakVBZlEqUNzU1NTIwMAAIlqSmQsSMzM2N7UwtzSwgJqSmQ40N0rbO8gyzNLYxd0r0ssnqtTXw9XAzNzPojDXwKnCzyM1ILHIyTktRt-CwtnTVqkWACzqMBw_" succ:^{
        
        [TUICallingManager.shareInstance call:@[@"x001"] type:TUICallingTypeAudio];
    } fail:^(int code, NSString *msg) {
        
    }];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
