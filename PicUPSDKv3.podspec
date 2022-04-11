Pod::Spec.new do |s|
    s.name = "PicUPSDKv3"
    s.version = "2.4.5"
    s.summary = "PicUPSDKv3"

    s.homepage = 'https://picup.io'
    s.license = { :type => 'Copyright', :text => 'Copyright 2021 PicUP' }
    s.author = { 'PicUP' => 'contact@picup.io' }

    s.platform = :ios
    s.ios.deployment_target = '10.0'
    s.cocoapods_version = '>= 1.10.0'

    s.source = { :git => 'https://github.com/PicupMobile/IOS.PicupSDKv3', :tag => s.version }
    s.vendored_frameworks = 'PicUPSDKv3.xcframework'
    s.preserve_paths =  'PicUPSDKv3.xcframework/*'
    s.source_files = 'PicUPSDKv3.xcframework/ios-arm64_armv7/PicUPSDKv3.framework/Headers/*.{h,m,swift}'
end
