#import <Cordova/CDV.h>
#import "CDVSettings.h"

@interface CDVSettings () {}
@end

@implementation CDVDevice

- (void)openSettings:(CDVInvokedUrlCommand*)command
{
    BOOL canOpenSettings = (&UIApplicationOpenSettingsURLString != NULL);
    if (canOpenSettings) {
        NSURL *url = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
        [[UIApplication sharedApplication] openURL:url];
    }
}

@end