Pod::Spec.new do |s|
  s.name         = "UIView+Shimmer"
  s.version      = "1.0.0"
  s.summary      = "UIView+Shimmer is a super-lightweight category that adds a shimmering effect to any UIView, without the need for wrappers, nor layout and touch-handling voodoo."

  s.description  = <<-DESC
                   UIView+Shimmer is a super-lightweight category that adds a shimmering effect to any UIView, without the need for wrappers, nor layout and touch-handling voodoo.
                   DESC

  s.homepage     = "https://github.com/markiv/UIView-Shimmer"
#  s.screenshots  = "https://github.com/markiv/PPCopiableLabel/blob/master/demo1.png", "https://github.com/markiv/PPCopiableLabel/blob/master/ib_custom_class.png"

  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Vikram Kriplaney" => "vikram@iphonso.com" }
  s.social_media_url   = "http://twitter.com/krips"
  s.platform     = :ios, "3.0"
  s.source       = { :git => "https://github.com/markiv/UIView-Shimmer.git", :tag => "1.0.0" }
  s.source_files = "Classes/*.{h,m}"
  s.requires_arc = true
end
