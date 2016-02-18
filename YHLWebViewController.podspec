#
# Be sure to run `pod lib lint YHLWebViewController.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "YHLWebViewController"
  s.version          = "0.1.0"
  s.summary          = "YHLWebViewController like wechat WebView style"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC 
			YHLWebViewController 实现类似微信的 webView 导航效果，包括进度条，左滑返回上个网页或者直接关闭
                       DESC

  s.homepage         = "https://github.com/yuhanle/YHLWebViewController"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "yuhanle" => "thinkerdown@gmail.com" }
  s.source           = { :git => "https://github.com/yuhanle/YHLWebViewController.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/yuhanle'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'YHLWebViewController' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
