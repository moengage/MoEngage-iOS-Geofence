Pod::Spec.new do |s|

  s.name         = 'MoEngageGeofence'
  s.version      = '5.15.0'
  s.summary      = 'MoEngage SDK for Geofence based campaigns in iOS'
  s.description  = <<-DESC
                   MoEngageGeofence framework helps you to trigger notifications based on the exit/entry of geofences. This framework makes use of the Region Monitoring service of CoreLocation to achieve the same.
                   DESC

  s.homepage     = 'https://www.moengage.com'
  s.documentation_url = 'https://developers.moengage.com'
  s.license      = { :type => 'Commercial', :file => 'LICENSE' }
  s.author       = { 'MobileDev' => 'mobiledevs@moengage.com' }
  s.social_media_url   = 'https://twitter.com/moengage'
  s.platform     = :ios
  s.ios.deployment_target = '11.0'

  s.source       = { 
    :git => 'https://github.com/moengage/MoEngage-iOS-Geofence.git', 
    :tag => 'geofence-' + s.version.to_s 
  }

  s.ios.vendored_frameworks = 'Frameworks/MoEngageGeofence.xcframework'
  s.requires_arc = true
  s.frameworks = 'Foundation', 'UIKit', 'CoreLocation'
  s.dependency 'MoEngage-iOS-SDK', '>= 9.16.0', '< 9.17.0'
end
