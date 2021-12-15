Gem::Specification.new do |spec|
  spec.name          = 'xcpretty-warning-counter'
  spec.version       = '1.2.0'
  spec.authors       = ['John Lyon-Smith']
  spec.email         = ['john@jamoki.com']
  spec.description   =
    '
  Formatter which counts warnings in an XcodeBuild
  '
  spec.summary       = 'xcpretty custom formatter for TravisCI'
  spec.homepage      = 'https://github.com/jlyonsmith/xcpretty-warning-counter'
  spec.license       = 'MIT'
  spec.required_ruby_version = '~> 2.0'
  spec.files = [
    'README.md',
    'LICENSE.md',
    'lib/warning_counter.rb',
    'bin/xcpretty-warning-counter'
  ]
  spec.executables   = ['xcpretty-warning-counter']
  spec.require_paths = ['lib']
  spec.add_dependency 'json', '~> 2.3.0'
  spec.add_dependency 'xcpretty', '~> 0.2', '>= 0.0.7'
  spec.add_development_dependency 'bundler', '~> 2.2.32'
  spec.add_development_dependency('code-tools', '~> 5.0')
  spec.add_development_dependency 'rake'
end
