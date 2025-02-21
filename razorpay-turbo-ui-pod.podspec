#
# Be sure to run `pod lib lint razorpay-turbo-ui-pod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'razorpay-turbo-ui-pod'
  s.version          = '1.0.0'
  s.summary          = 'Turbo Library with UI support '

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/razorpay/razorpay-turbo-ui-pod'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Razorpay' => 'support@razorpay.com' }
  s.source           = { :git => 'https://github.com/razorpay/razorpay-turbo-ui-pod.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'

  # s.source_files = 'razorpay-turbo-ui-pod/Classes/**/*'
  
  # s.resource_bundles = {
  #   'razorpay-turbo-ui-pod' => ['razorpay-turbo-ui-pod/Assets/*.png']
  # }
  
    s.vendored_frameworks = [
    'Pod/CommonLibrary.framework',
    'Pod/OlivePayLibrary.framework',
    'Pod/RazorpayTurboUPI.framework',
    'Pod/RazorpayTurboUPIUI.framework',
    'Pod/TurboUpiPlugin.framework']
    
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
