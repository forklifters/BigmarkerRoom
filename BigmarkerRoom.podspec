Pod::Spec.new do |s|
s.name             = 'BigmarkerRoom'
s.version          = '0.1.0'
s.summary          = 'test test test'

s.description      = 'pod lib lintpod lib lintpod lib lintpod lib lint'

s.homepage         = 'https://github.com/hanqingqingmomo/BigmarkerRoom'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'HanQing' => 'qing.han@bigmarker.com' }
s.source           = { :git => 'git@github.com:hanqingqingmomo/BigmarkerRoom.git', :tag => s.version.to_s }

s.frameworks    = 'UIKit','AVFoundation','Foundation'



s.ios.deployment_target = '9.0'
s.source_files = 'BigmarkerRoom/ViewController.swift'


end
