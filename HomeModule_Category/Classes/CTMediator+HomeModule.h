//
//  CTMediator+HomeModule.h
//  CTMediator
//
//  Created by WTW on 2019/10/28.
//

#import <UIKit/UIKit.h>

#import <CTMediator/CTMediator.h>

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (HomeModule)

- (UIViewController *)HomeModule_ViewController;

- (UIViewController *)HomeModule_CategoryViewControllerWithCallback:(void (^)(NSString *))callback;

- (UIViewController *)HomeModule_pushToDetailController:(void(^)(NSString * str))callback;
@end

NS_ASSUME_NONNULL_END
