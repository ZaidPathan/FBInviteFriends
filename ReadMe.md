 ******************  Integrated FB sdk version: 4.5.1   ******************

A demo app which is very simple, Inviting your facebook friends is just made easy.
![DemoLook](https://github.com/ZaidPathan/FBInviteFriends/blob/master/Git-Images/image_20150907181329.jpg)

How to use:

Step 1: Create and configure app on: https://developers.facebook.com/
Step 2: Create an app link id here: https://developers.facebook.com/quickstarts/?platform=app-links-host
Step 3: Update your info.plist according to this: https://developers.facebook.com/quickstarts/?platform=ios
Step 4: Update appLinkURL and appInvitePreviewImageURL for your app in ViewController.m.

Note: Notification will only come if you are testing both accounts in real iOS device, not in Mac browser or Simulator.

✸ While cretaing App Link for your own app, Add App Store ID of your live app, this will help facebook to redirect your iTunes app when user click on Install on Facebook app or will open app if installed.