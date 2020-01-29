#
# Be sure to run `pod lib lint iOSDropDown.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'iOSDropDown'
  s.version          = '0.3.4'
  s.summary          = ' iOSDropDown is an Awesome DropDown Library with Search and other customization options'
  s.swift_version      = '5.0'
  s.description      = <<-DESC
iOSDropDown is an Awesome Drop Down Menu Library with Search & other customization options For iOS
                       DESC

  s.homepage         = 'https://github.com/jriosdev/iOSDropDown'
  s.screenshots     = 'https://raw.githubusercontent.com/jriosdev/iOSDropDown/master/images/1.gif', 'https://raw.githubusercontent.com/jriosdev/iOSDropDown/master/images/2.gif'
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
  
  
end
