# YHLWebViewController

[![CI Status](http://img.shields.io/travis/yuhanle/YHLWebViewController.svg?style=flat)](https://travis-ci.org/yuhanle/YHLWebViewController)
[![Version](https://img.shields.io/cocoapods/v/YHLWebViewController.svg?style=flat)](http://cocoapods.org/pods/YHLWebViewController)
[![License](https://img.shields.io/cocoapods/l/YHLWebViewController.svg?style=flat)](http://cocoapods.org/pods/YHLWebViewController)
[![Platform](https://img.shields.io/cocoapods/p/YHLWebViewController.svg?style=flat)](http://cocoapods.org/pods/YHLWebViewController)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

实现类似微信的webView导航效果，左滑返回上个网页，就像UINavigationController

## Requirements

xcode, iOS 6.0+

## Installation

YHLWebViewController is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "YHLWebViewController"
```

定制 navigation bar tint color and back button style 导航栏的颜色和返回按钮样式（详见demo）

导航栏中出现的 返回 和 关闭 ，均会继承你的 navigationController 中对 navigationBar 的设置，比如：

```
    UIColor* tintColor = [UIColor whiteColor];
    UIColor* barTintColor = [UIColor blueColor];
    self.navigationController.navigationBar.tintColor = tintColor;
    self.navigationController.navigationBar.barTintColor = barTintColor;
    [self.navigationController.navigationBar setTitleTextAttributes:@{                                                                      NSForegroundColorAttributeName:tintColor
                                                                  }];
```

## Author

yuhanle, thinkerdown@gmail.com

## Result

![result picture](https://github.com/yuhanle/YHLWebViewController/blob/master/wx1.gif)

## License

YHLWebViewController is available under the MIT license. See the LICENSE file for more info.

## Thanks

just reference [RxWebViewController](https://github.com/Roxasora/RxWebViewController) 

and used[NJKWebViewProgress](https://github.com/ninjinkun/NJKWebViewProgress) to make navigation progress, it helps a lot
