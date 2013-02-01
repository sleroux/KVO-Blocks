#
# Be sure to run `pod spec lint KVOBlocks.podspec' to ensure this is a
# valid spec.
#
# Remove all comments before submitting the spec. Optional attributes are commented.
#
# For details see: https://github.com/CocoaPods/CocoaPods/wiki/The-podspec-format
#

Pod::Spec.new do |s|
  s.name         = "KVOBlocks"
  s.version      = "0.1.0"
  s.summary      = "Bringing KVO into the modern world by "
  s.homepage     = "https://github.com/sleroux/KVO-Blocks"
  s.license      = 'MIT'
  s.author       = { "Stephan Leroux" => "stephanleroux@gmail.com" }
  s.source       = { :git => "https://github.com/sleroux/KVO-Blocks.git", :tag => "0.1.0" }
  s.platform     = :ios
  s.source_files = 'KVO Blocks', 'KVO Blocks/*.{h,m}'
  s.requires_arc = true
end
