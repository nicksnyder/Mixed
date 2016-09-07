Pod::Spec.new do |spec|
  spec.name             = 'Mixed'
  spec.version          = '1.0.0'
  spec.license          = 'private'
  spec.homepage         = 'https://github.com/nicksnyder/Mixed'
  spec.author           = 'Nick'
  spec.summary          = 'Mixed'
  spec.source           = { :path => '.' }
  spec.source_files     = '**/*.{swift,h,m}'
  spec.resource_bundles = {
    'MixedResources' => ['**/*.xcassets']
  }

  spec.ios.deployment_target = '8.0'
  spec.ios.frameworks        = 'Foundation'
end
