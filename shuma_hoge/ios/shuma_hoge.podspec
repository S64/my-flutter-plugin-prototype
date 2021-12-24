Pod::Spec.new do |s|
  s.name                = 'shuma_hoge'
  s.version             = '1.0.0-SNAPSHOT'
  s.summary             = 'Shuma\'s prototype flutter plugin - iOS implementation'
  s.author              = { 'Shuma Yoshioka' => 'shuma_yoshioka@kiganix.co.jp' }
  s.homepage            = 'https://kiganix.co.jp'
  s.license             = { :file => '../LICENSE' }
  s.source              = { :path => '.' }
  s.source_files        = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.platform            = :ios, '9.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'i386' }

  s.dependency 'Flutter'
end
