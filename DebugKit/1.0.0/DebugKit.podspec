#
# Be sure to run `pod lib lint DebugKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DebugKit'
  s.version          = '1.0.0'
  s.summary          = 'DebugKit is a collection of debug tools..'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/wangkaird/DebugKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wangkaird' => 'wangkaird@gmail.com' }
  s.source           = { :git => 'https://github.com/wangkaird/DebugKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'DebugKit/Sources/**/*'
  s.vendored_frameworks = "DebugKit/Frameworks/RevealServer.framework"


  # fix pod lib lint error: building for iOS Simulator, but linking in dylib built for iOS, 
  # file 'RevealServer.framework/RevealServer' for architecture arm64
  # https://github.com/CocoaPods/CocoaPods/issues/10104
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  # s.resource_bundles = {
  #   'DebugKit' => ['DebugKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
