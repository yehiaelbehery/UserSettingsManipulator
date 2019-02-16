Pod::Spec.new do |s|

  s.platform = :ios
  s.ios.deployment_target = '11.0'
  s.name         = "UserSettingsManipulator"
  s.version      = "0.0.1"
  s.summary      = "Manipulate userDefaults (and revert to original state) to better test your code."
  s.requires_arc = true

  s.description  = <<-DESC
Manipulate userDefaults (and revert to original state) to better test your code.
                   DESC


  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "Yehia Elbehery" => "yehia.elbehery@gmail.com" }

  s.homepage     = "https://github.com/yehiaelbehery/UserSettingsManipulator"

  s.source = { :git => "https://github.com/yehiaelbehery/UserSettingsManipulator.git",
:tag => "#{s.version}" }

#s.framework = "UIKit"

s.source_files = "UserSettingsManipulator/**/*.{swift}"

s.resources = "UserSettingsManipulator/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"

s.swift_version = "4.2"

end
