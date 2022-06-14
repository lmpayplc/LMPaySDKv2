Pod::Spec.new do |s|  
    s.name              = 'LMPayv2'
    s.version           = '1.0.0'
    s.summary           = '乐马支付iOS SDK'
    s.homepage          = 'https://www.lmpayplc.com'

    s.author            = { 'lmpayplc' => 'appstore@lmpayplc.com' }
    s.license           = { :type => 'Copyright', :text => 'Copyright © 2020.LM PAY PLC' }

    s.platform          = :ios
    s.source            = { :git => "https://github.com/lmpayplc/LMPaySDKv2.git", :tag => "#{s.version}" }

    s.ios.deployment_target = '10.0'
    s.vendored_frameworks = 'LMPayv2.framework'
    s.frameworks          = 'WebKit'
    s.dependency          "MBProgressHUD"

    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end 
