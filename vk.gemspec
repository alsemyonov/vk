# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'vk/version'

Gem::Specification.new do |s|
  s.name        = 'vk'
  s.version     = Vk::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Alexander Semyonov']
  s.email       = ['al@semyonov.us']
  s.homepage    = 'http://github.com/alsemyonov/vk'
  s.summary     = %q{Simple wrapper for vk.com API}
  s.description = %q{Wrapper for calling vk.com API from vk.com application servers and sites using vk.com API}

  s.rubyforge_project = 'vk'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency('activesupport', '~> 3.0')
  s.add_dependency('json', '~> 1.5.1')

  s.add_development_dependency('rspec', '~> 2.5.0')
  s.add_development_dependency('yard', '~> 0.6.8')
end
