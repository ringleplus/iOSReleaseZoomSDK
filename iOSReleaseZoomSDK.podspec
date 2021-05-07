#
#  Be sure to run `pod spec lint iOSZoomSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "iOSReleaseZoomSDK"
  spec.version      = "1.0.0"
  spec.summary      = "iOS Release Zoom SDK"

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  spec.description  = <<-DESC
                      iOS용 배포용 Zoom SDK 입니다.
                      DESC

  spec.homepage     = "https://github.com/ringleplus/iOSReleaseZoomSDK"
  spec.author             = { "hwangkunjoo" => "hwangkunjoo@gmail.com" }
  spec.license      =  { :type => 'MIT', :text => <<-LICENSE
    MIT License
      Copyright (c) 2021 zvs001
      Permission is hereby granted, free of charge, to any person obtaining a copy
      of this software and associated documentation files (the "Software"), to deal
      in the Software without restriction, including without limitation the rights
      to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
      copies of the Software, and to permit persons to whom the Software is
      furnished to do so, subject to the following conditions:
      The above copyright notice and this permission notice shall be included in all
      copies or substantial portions of the Software.
      THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
      IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
      FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
      AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
      LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
      OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
      SOFTWARE.
    LICENSE
  }
  spec.source       = { :http => "https://github.com/zoom/zoom-sdk-ios/archive/refs/tags/v4.6.21666.0428.zip" }
  spec.requires_arc        = true
  spec.platform = :ios, "10.0"

  spec.vendored_frameworks =  "zoom-sdk-ios-4.6.21666.0428/lib/MobileRTC.framework"
  spec.resource = "zoom-sdk-ios-4.6.21666.0428/lib/MobileRTCResources.bundle"
  

  spec.libraries = "sqlite3", "z.1.2.5", "c++"
  spec.weak_framework = "VideoToolbox", "CoreMedia"
  spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
end
