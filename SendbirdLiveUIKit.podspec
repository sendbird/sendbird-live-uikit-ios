Pod::Spec.new do |s|
  s.name         = 'SendbirdLiveUIKit'
  s.version      = "1.0.0-beta.5"
  s.summary      = 'Sendbird Live iOS UIKit Framework'
  s.description  = 'Sendbird Live UIKit for iOS allows you to create customizable views and execute essential live functions'
  s.homepage     = 'https://sendbird.com'
  s.license      = { :type => 'Commercial', :file => 'SendbirdLiveUIKit/LICENSE' }
  s.authors      = {
    'Minhyuk Kim' => 'minhyuk.kim@sendbird.com',
    'Sendbird' => 'sha.sdk_deployment@sendbird.com'
  }
  s.source       = { :http => "https://github.com/sendbird/sendbird-live-uikit-ios/releases/download/v1.0.0-beta.5/SendbirdLiveUIKit.zip", :sha1 => "93f2ce6d7b48681ab6af0af3703e5f012e95f3c2" }
  s.requires_arc = true
  s.platform = :ios, '11.0'
  s.documentation_url = 'https://sendbird.com/docs/live/v1/ios/ref/index.html'
  s.ios.vendored_frameworks = 'SendbirdLiveUIKit/SendbirdLiveUIKit.xcframework'
  s.dependency "SendbirdLiveSDK", "1.0.0-beta.8"
  s.dependency "SendBirdUIKit", "3.5.2"
  s.ios.frameworks =  ["UIKit", "Foundation", "WebRTC", "AVKit", "MediaPlayer", "Network", "CoreTelephony", "VideoToolbox"]
  s.ios.library   = 'icucore'
end
