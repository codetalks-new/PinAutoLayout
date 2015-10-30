#
# Be sure to run `pod lib lint PinAutoLayout.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "PinAutoLayout"
  s.version          = "1.0.0"
  s.summary          = "Easy to use AutoLayout With PinAutoLayout"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
  PinAutoLayout 致力于减少 AutoLayout 使用中的繁杂和琐碎的问题。
  通过合理的封装，来简化 90% 使用场景的使用场景。
  1）在 View 的级别简化 约束的设置。
  2）在布局的级别通过定义一些常见的布局来简化布局所需要编写的 AutoLayout 代码。
  3）与 ViewController 结合，简化 基于 topLayoutGuide,及 bottomLayoutGuide 的约束设置。
                       DESC

  s.homepage         = "https://github.com/banxi1988/PinAutoLayout"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "banxi1988" => "banxi1988@gmail.com" }
  s.source           = { :git => "https://github.com/banxi1988/PinAutoLayout.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'PinAutoLayout' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
