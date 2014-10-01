#import "CDVSettings.h"
#import <Cordova/CDV.h>

@implementation CDVSettings

- (void)openSettings:(CDVInvokedUrlCommand*)command {
    CDVPluginResult* pluginResult = nil;
    BOOL canOpenSettings = (&UIApplicationOpenSettingsURLString != NULL);
    if (canOpenSettings) {
        NSURL *url = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
        [[UIApplication sharedApplication] openURL:url];
    }
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end