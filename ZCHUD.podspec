#
#  Be sure to run `pod spec lint ZCHUD.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

s.name = "ZCHUD"
s.version = "1.0.0"
s.summary = "一个弹框"
s.description = "一个黑色的弹框"
s.homepage = "https://github.com/gegeburu3308119/ZCHUD"
s.license= { :type => "MIT" }
s.author = { 'zhangcong' => "13718051965@163.com" }
s.source = { :git => "https://github.com/gegeburu3308119/ZCHUD.git", :tag => s.version }
s.source_files = "ZCHUD/*"
s.platform = :ios, "8.0"
s.frameworks = "UIKit"
s.requires_arc = true

end

