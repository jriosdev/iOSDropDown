#
# Be sure to run `pod lib lint iOSDropDown.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'iOSDropDown'
  s.version          = '0.1.4'
  s.summary          = ' iOSDropDown is an Awesome DropDown Library with Search'
  s.swift_version      = '4.0'
  s.description      = <<-DESC
iOSDropDown is an Awesome Drop Down Menu Library with Search & other customization options
                       DESC

  s.homepage         = 'https://github.com/jriosdev/iOSDropDown'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jishnu Raj T' => 'jriosdev@gmail.com' }
  s.source           = { :git => 'https://github.com/jriosdev/iOSDropDown.git', :tag => s.version.to_s }
   s.social_media_url = 'https://twitter.com/jishnurajt'

   s.ios.deployment_target = '8.0'

   s.source_files = 'iOSDropDown/Classes/**/*'
  
  # s.resource_bundles = {
  #   'iOSDropDown' => ['iOSDropDown/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
end
