//
//  CTMediator+HomeModule.m
//  CTMediator
//
//  Created by WTW on 2019/10/28.
//

#import "CTMediator+HomeModule.h"

#import <UIKit/UIKit.h>

@implementation CTMediator (HomeModule)

- (UIViewController *)HomeModule_ViewController {
    return  [self performTarget:@"HomeModule" action:@"viewController" params:nil shouldCacheTarget:NO];
}


@end
