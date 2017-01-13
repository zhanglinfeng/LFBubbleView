Pod::Spec.new do |s|
s.name = 'LFBubbleView'
s.version = '1.1'
s.license = { :type => "MIT", :file => "LICENSE" }
s.summary = '方便灵活的气泡框，可设置边框，三角大小位置，颜色，圆角，甚至自定义里面的内容 '
s.homepage = 'https://github.com/zhanglinfeng/LFBubbleView'
s.authors = { '张林峰' => '1051034428@qq.com' }
s.source = { :git => 'https://github.com/zhanglinfeng/LFBubbleView.git', :tag => s.version.to_s }
s.requires_arc = true
s.ios.deployment_target = '8.0'
s.source_files = 'LFBubbleView/*.{h,m}'
end
