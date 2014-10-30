//
//  Appdelegate.m
//  
//
//  Created by Eswar on 19/10/14.
//


#import "AppDelegate.h"

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
 
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    ViewController *mainController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
    [self.window setRootViewController:mainController];
    [self.window makeKeyAndVisible];

    return YES;
}



@end
