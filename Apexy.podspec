Pod::Spec.new do |s|
  s.name         = "Apexy"
  s.version      = "1.0.0"
  s.summary      = "HTTP transport library"
  s.homepage     = "https://github.com/RedMadRobot/apexy-ios"
  s.license      = { :type => "MIT"}
  s.author      = { "Alexander Ignatiev" => "ai@redmadrobot.com" }
  s.source       = { :git => "https://github.com/RedMadRobot/apexy-ios.git", :tag => "#{s.version}" }

  s.ios.deployment_target = "10.0"
  s.tvos.deployment_target = "10.0"
  s.osx.deployment_target = "10.10"
  s.watchos.deployment_target = "4.0"

  s.swift_version = "5.2"
  s.source_files  = "Source/Apexy/**/*.swift"
  
  s.dependency "Alamofire", '~>5.0'

  s.subspec 'RxSwift' do |sp|
    sp.source_files = 'Source/Apexy+RxSwift/*.swift'
    sp.dependency "RxSwift"
  end

  s.subspec 'Combine' do |sp|
    sp.source_files = 'Source/Apexy+Combine/*.swift'
  end

  s.default_subspecs = :none

end