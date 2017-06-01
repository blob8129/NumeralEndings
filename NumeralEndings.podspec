#
# Be sure to run `pod lib lint NumeralEndings.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'NumeralEndings'
  s.version          = '0.1.2'
  s.summary          = 'A tiny library helping to correctly modify russian words depending on the count.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Russian words a spelled diffently in this cases:
Quantity ends in 1 - As per position in the sentence.
Quantity ends in 2,3,4 - Genitive Singular.
Quantity ends in 5,6,7,8,9,0,11,12 etc.  - Genitive Plural
Library extends integer type to return a correct form of a word.
                       DESC

  s.homepage         = 'https://github.com/blob8129/NumeralEndings'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'blob8129@gmail.com' => 'bloba8129@gmail.com' }
  s.source           = { :git => 'https://github.com/blob8129/NumeralEndings.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'NumeralEndings/Classes/**/*'
  
  # s.resource_bundles = {
  #   'NumeralEndings' => ['NumeralEndings/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
