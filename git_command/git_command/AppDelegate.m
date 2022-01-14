//
//  AppDelegate.m
//  git_command
//
//  Created by wangjiayu on 2022/1/14.
//

#import "AppDelegate.h"
#import "ViewController.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  
  self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
  [self initRootCtrl];
  self.window.backgroundColor = [UIColor whiteColor];
  [self.window makeKeyAndVisible];
  
  return YES;
}

- (void)initRootCtrl {
  ViewController *ctrl = [[ViewController alloc] init];
  ctrl.view.backgroundColor = [UIColor whiteColor];
  UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:ctrl];
  
  UINavigationBarAppearance *apperance = [[UINavigationBarAppearance alloc] init];
  apperance.backgroundColor = [UIColor orangeColor];
  apperance.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor whiteColor]};
  nav.navigationBar.standardAppearance = apperance;
  nav.navigationBar.scrollEdgeAppearance = apperance;
  
  self.window.rootViewController = nav;
}


@end
