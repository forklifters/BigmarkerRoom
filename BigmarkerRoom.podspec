Pod::Spec.new do |s|
s.name             = 'BigmarkerRoom'
s.version          = '0.2.1'
s.summary          = 'test test test'

s.description      = 'pod lib lintpod lib lintpod lib lintpod lib lint'

s.homepage         = 'https://github.com/hanqingqingmomo/BigmarkerRoom'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'HanQing' => 'qing.han@bigmarker.com' }
s.source           = { :http => 'http://github.com/hanqingqingmomo/BigmarkerRoom/archive/0.2.0.zip' }

s.frameworks    = 'UIKit','AVFoundation','Foundation'



s.ios.deployment_target = '9.0'
s.source_files = 'BigmarkerRoom/BMViewController.swift'

end
