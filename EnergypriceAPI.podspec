Pod::Spec.new do |s|
  s.name             = 'EnergypriceAPI'
  s.version          = '1.0.4'
  s.summary          = 'Official Swift wrapper for energypriceapi.com'
  s.homepage         = 'https://github.com/energypriceapi/energypriceapi-swift'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'EnergypriceAPI' => 'contact@energypriceapi.com' }
  s.source           = { :git => 'https://github.com/energypriceapi/energypriceapi-swift.git', :tag => s.version.to_s }
  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'
  s.source_files = 'Sources/EnergypriceAPI/**/*'
end
