Pod::Spec.new do |s|
  s.name             = 'SwiftyObjC'
  s.version          = '1.0.0'
  s.summary          = 'Get your Objective-C more swifty with type inference and if-let syntax'
  s.homepage         = 'https://github.com/ReDetection/SwiftyObjC'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ReDetection' => 'redetection@gmail.com' }
  s.source           = { :git => 'https://github.com/ReDetection/SwiftyObjC.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'SwiftyObjC/**/*'
end
