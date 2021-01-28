#
# Be sure to run `pod lib lint HSBRep.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  # 项目名称
  s.name             = 'HSBRep'
  # 项目版本号
  s.version          = '0.0.3'
  # 项目摘要
  s.summary          = 'A short description of HSBRep.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  # 详细描述
  s.description      = "HSBRep远程仓库"

  # 仓库主页地址
  s.homepage         = 'https://github.com/MiaoMiaoai/HSBRep'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  
# ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  Licensing your code is important. See http://choosealicense.com for more info.
#  CocoaPods will detect a license file if there is a named LICENSE*
#  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
#
  #s.license          = { :type => 'MIT', :file => 'LICENSE' }
  # 证书
  s.license      = { :type => "MIT", :file => "LICENSE" }

# ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  Specify the authors of the library, with email addresses. Email addresses
#  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
#  accepts just a name if you'd rather not provide an email address.
#
#  Specify a social_media_url where others can refer to, for example a twitter
#  profile URL.
#
  # 作者名称邮箱地址
  s.author           = { 'MiaoMiaoai' => '380742316@qq.com' }
  
# ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  Specify the location from where the source should be retrieved.
#  Supports git, hg, bzr, svn and HTTP.
#
  # git源码地址
  s.source           = { :git => 'https://github.com/MiaoMiaoai/HSBRep.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
# ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  If this Pod runs only on iOS or OS X, then specify the platform and
#  the deployment target. You can optionally include the target after the platform.
#
  # 平台版本号
  s.ios.deployment_target = '9.0'
  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"
  
# ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  CocoaPods is smart about how it includes source code. For source files
#  giving a folder will include any swift, h, m, mm, c & cpp files.
#  For header files it will include any header in the folder.
#  Not including the public_header_files will make all headers public.
#
    
  # 不分层的话就可以直接按照下面的写法
  # s.source_files  = "Classes", "Classes/**/*.{h,m}"
  # s.exclude_files = "Classes/**/*.h"
  #s.source_files = 'HSBRep/Classes/**/*'
  
  # 代码文件
  # 分层文件夹
  s.subspec 'TimerHelper' do |t|
      t.subspec 'GCD' do |gcd|
        gcd.source_files = 'HSBRep/Classes/TimerHelper/GCD/**/*.{h,m}'
        # gcd.public_header_files = 'Classes/TimerHelper/GCD/**/*.h'
      end

      t.subspec 'NSTimer' do |nst|
        nst.source_files = 'HSBRep/Classes/TimerHelper/NSTimer/**/*.{h,m}'
        # nst.public_header_files = 'Classes/TimerHelper/NSTimer/**/*.h'
      end
    end

    s.subspec 'UITableVIewHelper' do |uit|
        uit.source_files = 'HSBRep/Classes/UITableVIewHelper/**/*.{h,m}'
        # gcd.public_header_files = 'Classes/TimerHelper/GCD/**/*.h'
    end
  
  # s.resource_bundles = {
  #   'HSBRep' => ['HSBRep/Assets/*.png']
  # }
  
  # s.public_header_files = 'Pod/Classes/**/*.h'
  
# ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  A list of resources included with the Pod. These are copied into the
#  target bundle with a build phase script. Anything else will be cleaned.
#  You can preserve files from being cleaned, please don't preserve
#  non-essential files like tests, examples and documentation.
#

  # 图片资源
  # s.resource  = "icon.png"
  s.resources = "HSBRep/Resource/*.png"
  
# ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  Link your library with frameworks, or libraries. Libraries do not include
#  the lib prefix of their name.
#
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  
# ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  If your library depends on compiler flags you can set them in the xcconfig hash
#  where they will only apply to your library. If you depend on other Podspecs
#  you can include multiple dependencies to ensure it works.

    s.requires_arc = true

    # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
    # s.dependency "JSONKit", "~> 1.4"
end
