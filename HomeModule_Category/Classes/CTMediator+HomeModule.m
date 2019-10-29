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
    UIViewController *controller = [self performTarget:@"HomeModule" action:@"viewController" params:nil shouldCacheTarget:NO];
    if ([controller isKindOfClass:[UIViewController class]]) {
        // view controller 交付出去之后，可以由外界选择是push还是present
        return controller;
    }else {
        // 这里处理异常场景，具体如何处理取决于产品
        return [[UIViewController alloc] init];
    }
}

- (UIViewController *)HomeModule_CategoryViewControllerWithCallback:(void (^)(NSString *sr))callback
{
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"callback"] = callback;
    return [self performTarget:@"HomeModule" action:@"Category_ViewController" params:params shouldCacheTarget:NO];
}

- (UIViewController *)HomeModule_pushToDetailController:(void(^)(NSString * str))callback {
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"callback"] = callback;
    return [self performTarget:@"HomeModule" action:@"pushToDetailController" params:params shouldCacheTarget:NO];
}

@end
