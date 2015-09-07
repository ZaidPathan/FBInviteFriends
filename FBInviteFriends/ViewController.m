//
//  ViewController.m
//  FBInviteFriends
//
//  Created by Zaid Pathan on 07/09/15.
//  Copyright (c) 2015 Zaid Pathan. All rights reserved.
//

#import "ViewController.h"
#import <FBSDKShareKit/FBSDKShareKit.h>

@interface ViewController () <FBSDKAppInviteDialogDelegate>
@property (strong, nonatomic) IBOutlet UIButton *IBbtnInviteYourFriends;
@property (strong, nonatomic) IBOutlet UILabel *IBlblFacebook;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	[self configureView];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
}

- (IBAction)IBActionInviteYourFriends:(UIButton *)sender {
	
	//Change these both parameters according to your app
	NSString *appLinkURL = @"https://fb.me/1234";
	NSString *appInvitePreviewImageURL = @"https://www.google.co.in/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png";
	
	FBSDKAppInviteContent *content =[[FBSDKAppInviteContent alloc] init];
	content.appLinkURL = [NSURL URLWithString:appLinkURL];
	//optionally set previewImageURL
	content.appInvitePreviewImageURL = [NSURL URLWithString:appInvitePreviewImageURL];
	
	// present the dialog. Assumes self implements protocol `FBSDKAppInviteDialogDelegate`
	[FBSDKAppInviteDialog showWithContent:content
								 delegate:self];
	
}


#pragma mark FBSDKAppInviteDialogDelegate

- (void)appInviteDialog:(FBSDKAppInviteDialog *)appInviteDialog didCompleteWithResults:(NSDictionary *)results{
	NSLog(@"results: %@",results);
}


- (void)appInviteDialog:(FBSDKAppInviteDialog *)appInviteDialog didFailWithError:(NSError *)error{
	NSLog(@"error: %@",error);
}

- (void)configureView{
	[[[self IBbtnInviteYourFriends] layer] setBorderColor:[[UIColor whiteColor] CGColor]];
	[[[self IBbtnInviteYourFriends] layer] setBorderWidth:1.0];
}



@end
