Pod::Spec.new do |s|
    s.name = "PicUPSDKv3"
    s.summary = "PicUPSDKv3"
    s.version = "2.1.6"

    s.homepage = 'https://github.com/PicupMobile/IOS.PicupSDKv3'
    s.license = { :type => 'MIT', :file => 'LICENSE' }
    s.author = { 'PicUP' => 'contact@picup.io' }

    s.source = { :git => 'https://github.com/PicupMobile/IOS.PicupSDKv3.git', :tag => s.version }

    s.public_header_files = "SDKFramework/PicUPSDKv3.framework/Headers/*.h"
    s.source_files = "SDKFramework/PicUPSDKv3.framework/Headers/*.h"
    s.vendored_frameworks = "SDKFramework/PicUPSDKv3.framework"
#    s.static_framework = true
    
    s.platform = :ios
    s.ios.deployment_target = '9.0'

    s.swift_version = "4.2"
    s.swift_versions = ['4.2', '5.0']

    s.dependency 'Alamofire', '~> 4.9'
    s.dependency 'CryptoSwift'
end
