Pod::Spec.new do |s|

s.name         = "NativeKitImagePicker"
s.version      = "1.0"
s.summary      = "NativeKitImagePicker for ios."
s.homepage     = "https://github.com/abclz/NativeKitImagePicker.git"
s.license          = { :type => "MIT", :file => "LICENSE" }
s.author       = { "eason" => "18210437675@163.com" }
s.platform     = :ios, "8.0"
s.source       = { :git => "https://github.com/abclz/NativeKitImagePicker.git", :tag => "1.0" }
s.source_files = "NativeKitImagePicker/*"
s.framework    = "UIKit", "Foundation", "AVFoundation"
s.requires_arc = true

# s.frameworks = "SomeFramework", "AnotherFramework"

end

