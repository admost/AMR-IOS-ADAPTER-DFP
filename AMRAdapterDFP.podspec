Pod::Spec.new do |s|
  s.name             = 'AMRAdapterDFP'
  s.version          = '8.12.0.0'
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
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 arm64 x86_64' }
  s.vendored_libraries = 'AMRAdapterDFP/Libs/libAMRAdapterDFP.a'
  s.dependency 'AMRSDK', '~> 1.4.70'
  s.dependency 'Google-Mobile-Ads-SDK', '8.12.0.0'
end
