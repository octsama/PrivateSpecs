
Pod::Spec.new do |s|

  s.name         = "RNGestureHandler"
  s.version      = "1.10.3"
  s.summary      = "Experimental implementation of a new declarative API for gesture handling in react-native"
  s.homepage     = "https://github.com/software-mansion/react-native-gesture-handler"
  s.license      = "MIT"
  s.author       = "krzys.magiera@gmail.com"
  s.platforms    = { :ios => "9.0", :tvos => "9.0" }
  s.source       = { :git => "https://github.com/software-mansion/react-native-gesture-handler", :tag => "#{s.version}" }
  s.source_files = "ios/**/*.{h,m}"
  s.dependency "React-Core"

end
