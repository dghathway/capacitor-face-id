
  Pod::Spec.new do |s|
    s.name = 'CapacitorFaceId'
    s.version = '0.0.1'
    s.summary = 'Foo'
    s.license = 'MIT'
    s.homepage = 'https://github.com/dghathway/capacitor-face-id'
    s.author = 'Daniel Sogl'
    s.source = { :git => 'https://github.com/dghathway/capacitor-face-id', :tag => s.version.to_s }
    s.swift_version = '5.1'
    s.source_files = 'ios/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
    s.ios.deployment_target  = '12.0'
    s.dependency 'Capacitor'
  end