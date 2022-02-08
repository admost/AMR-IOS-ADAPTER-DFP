Pod::Spec.new do |s|
  s.name             = 'AMRAdapterDFP-Beta'
  s.version          = '8.13.0.1'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
														Copyright 2016
														Admost Mediation Limited.
														LICENSE
														}
  s.homepage         = 'http://www.admost.com/'
  s.author           = { 'Admost Mediation Limited' => 'amr@admost.com' }
  s.summary          = 'DFP/Admob mediation adapter for AMR SDK.'
  s.description      = 'AMR DFP/Admob mediation adapter allows publishers integrate Admost banners to DFP/Admob mediation layer.'

  s.source           = { :git => 'https://github.com/admost/AMR-IOS-ADAPTER-DFP.git',
 								 :tag => s.version.to_s
 								}
  s.documentation_url = 'https://admost.github.io/amrios/'
  s.platform 			= :ios
  s.ios.deployment_target = '9.0'
  s.pod_target_xcconfig = { 
    'OTHER_LDFLAGS' => '-ObjC -lc++',
    "VALID_ARCHS": "arm64 armv7 x86_64",
    'VALID_ARCHS[sdk=iphoneos*]' => 'armv7 arm64',
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64 arm64'
  }
  s.vendored_frameworks = 'AMRAdapterDFP/Libs/AMRAdapterDFP.xcframework'
  s.dependency 'AMRSDK-Beta', '~> 1.5.6'
  s.dependency 'Google-Mobile-Ads-SDK', '8.13.0.0'
end
