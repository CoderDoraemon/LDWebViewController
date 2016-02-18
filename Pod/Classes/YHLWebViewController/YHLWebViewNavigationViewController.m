//
//  YHLWebViewNavigationViewController.m
//  YHLWebViewController
//
//  Created by yuhanle on 15/10/23.
//  Copyright © 2015年 yuhanle. All rights reserved.
//

#import "YHLWebViewNavigationViewController.h"
#import "YHLWebViewController.h"

@interface YHLWebViewNavigationViewController ()<UINavigationBarDelegate, UINavigationControllerDelegate, UIGestureRecognizerDelegate>

/**
 *  由于 popViewController 会触发 shouldPopItems，因此用该布尔值记录是否应该正确 popItems
 */
@property BOOL shouldPopItemAfterPopViewController;

@end

@implementation YHLWebViewNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.shouldPopItemAfterPopViewController = NO;
    // Do any additional setup after loading the view.
    
    __weak YHLWebViewNavigationViewController * weakSelf = self;
    if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)])
    {
        self.interactivePopGestureRecognizer.delegate = weakSelf;
        self.delegate = weakSelf;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Hijack the push method to disable the gesture
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)])
        self.interactivePopGestureRecognizer.enabled = NO;
    
    [super pushViewController:viewController animated:animated];
}

-(UIViewController*)popViewControllerAnimated:(BOOL)animated{
    self.shouldPopItemAfterPopViewController = YES;
    return [super popViewControllerAnimated:animated];
}

-(NSArray<UIViewController *> *)popToViewController:(UIViewController *)viewController animated:(BOOL)animated{
    self.shouldPopItemAfterPopViewController = YES;
    return [super popToViewController:viewController animated:animated];
}

-(NSArray<UIViewController *> *)popToRootViewControllerAnimated:(BOOL)animated{
    self.shouldPopItemAfterPopViewController = YES;
    return [super popToRootViewControllerAnimated:animated];
}


- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    if ([self.childViewControllers count] == 1) {
        return NO;
    }
    return YES;
}

// 我们差不多能猜到是因为手势冲突导致的，那我们就先让 ViewController 同时接受多个手势吧。
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
    return YES;
}
//运行试一试，两个问题同时解决，不过又发现了新问题，手指在滑动的时候，被 pop 的 ViewController 中的 UIScrollView 会跟着一起滚动，这个效果看起来就很怪（知乎日报现在就是这样的效果），而且也不是原始的滑动返回应有的效果，那么就让我们继续用代码来解决吧
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldBeRequiredToFailByGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
    return [gestureRecognizer isKindOfClass:UIScreenEdgePanGestureRecognizer.class];
}

@end
