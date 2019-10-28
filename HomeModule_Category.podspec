
Pod::Spec.new do |s|
  s.name             = 'HomeModule_Category'
  s.version          = '0.1.0'
  s.summary          = 'A short description of HomeModule_Category.'

  s.description      = 'HomeModule_Category'

  s.homepage         = 'https://github.com/WuTengWei/HomeModule_Category'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wutengwei' => 'wutengwei@rocedar.com' }
  s.source           = { :git => 'https://github.com/WuTengWei/HomeModule_Category.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'HomeModule_Category/Classes/**/*'
  
  # s.resource_bundles = {
  #   'HomeModule_Category' => ['HomeModule_Category/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'


  s.dependency "CTMediator"
end
