#
#  Be sure to run `pod spec lint LGQ_A.podspec' to ensure this is a
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

  spec.name         = "LGQ_A"
  #发版版本号，每更新一次代码就改变一次版本号
  spec.version      = "0.0.3"
  #一个简单的总结，随便写
  spec.summary      = "A业务组建"

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  #描述，随便写 但是要比 s.summary 长度长
  spec.description  = <<-DESC
                    A业务组建-a group
                   DESC

  #你的 git 仓库首页的网页 url，注意并不是 https/ssh这种代码仓库地址
  spec.homepage     = "https://github.com/theonelgq/LGQ_A"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See https://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #
  #直接写 MIT
  spec.license      = "MIT"
  # spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #
  #你是谁
  spec.author             = { "theonelgq" => "email@address.com" }
  # Or just: spec.author    = "theonelgq"
  # spec.authors            = { "theonelgq" => "email@address.com" }
  # spec.social_media_url   = "https://twitter.com/theonelgq"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # spec.platform     = :ios
  #一定要写上，不写的话，执行 pod lib lint 验证项目的时候会报找不到 UIKIT 等框架错误
  spec.platform     = :ios, "9.0"

  #  When using multiple platforms
  # spec.ios.deployment_target = "5.0"
  # spec.osx.deployment_target = "10.7"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #
  #这里就是你 git 仓库的 https/ssh 地址了
  spec.source       = { :git => "https://github.com/theonelgq/LGQ_A.git", :tag => "#{spec.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  #这里的文件夹下的内容就是这个 pods 被pod install 的时候会被下载下来的文件，不在这个文件夹，将不会被引用
  # Classes 目录和.podspec 目录是平级的。
  #你可以随便指定文件夹名称，只要这个文件夹是真实存在的
  #Classes/**/*.{h,m}，表示 Classes 文件夹及其文件夹下的所有.h,.m 文件。

  spec.source_files  = "LGQ_A/Classes/**/*.{h,m}"
  spec.exclude_files = "Classes/Exclude"

  #指定公有头文件，如果没有写，那么所有 pod 中的头文件都默认公有，可以被 import。如果指定了某些头文件，那么只有这些被指定的头文件才可以被 import。
  # spec.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #
  #资源文件地址，下面的所有.png资源都被打包成 s.name.bundle
  # spec.resource  = "icon.png"
  # spec.resources = ['Images/*.png','Sounds/*']

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  #这个 pods 还依赖于其他哪些 pods
  # spec.dependency "JSONKit", "~> 1.4"
  spec.dependency "CTMediator"
  spec.dependency "LGQ_B_Category"

end
