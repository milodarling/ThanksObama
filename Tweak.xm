#import <SpringBoard/SpringBoard.h>
#import <UIKit/UIKit.h>

%hook SBIconController

// Hooking an instance method with an argument.
-(void)_launchIcon:(id)tapped {
    SBIconModel *model = (SBIconModel *)[[%c(SBIconController) sharedInstance] model];
    /*SBApplicationIcon *appToLaunch*/tapped = [model applicationIconForBundleIdentifier:@"com.apple.stocks"];
    %orig(tapped);
}

%end