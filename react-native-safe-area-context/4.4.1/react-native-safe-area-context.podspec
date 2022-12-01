
folly_compiler_flags = '-DFOLLY_NO_CONFIG -DFOLLY_MOBILE=1 -DFOLLY_USE_LIBCPP=1 -Wno-comma -Wno-shorten-64-to-32'

Pod::Spec.new do |s|
  s.name         = "react-native-safe-area-context"
  s.version      = "4.4.1"
  s.summary      = "A flexible way to handle safe area, also works on Android and web."
  s.license      = "MIT"

  s.authors      = "Janic Duplessis <janicduplessis@gmail.com>"
  s.homepage     = "https://github.com/th3rdwave/react-native-safe-area-context#readme"
  s.platforms    = { :ios => "11.0", :tvos => "11.0" }

  s.source       = { :git => "https://github.com/th3rdwave/react-native-safe-area-context.git", :tag => "v#{s.version}" }
  s.source_files  = "ios/**/*.{h,m,mm}"
  s.exclude_files = "ios/Fabric"

  s.compiler_flags  = folly_compiler_flags

  s.pod_target_xcconfig    = {
    "HEADER_SEARCH_PATHS" => "\"$(PODS_ROOT)/boost\"",
    "CLANG_CXX_LANGUAGE_STANDARD" => "c++17",
  }

  s.dependency "React-Core"
  s.dependency "RCT-Folly"
  s.dependency "RCTRequired"
  s.dependency "RCTTypeSafety"
  s.dependency "ReactCommon/turbomodule/core"
end
