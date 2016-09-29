# -*- encoding: utf-8 -*-
# frozen_string_literal: true
$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'vk/version'

Gem::Specification.new do |s|
  s.name = 'vk'
  s.version = Vk::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ['Alex Semyonov']
  s.email = %w(alex@semyonov.us)
  s.homepage = 'http://github.com/alsemyonov/vk'
  s.summary = 'Vk.com API Client'
  s.description = 'Object-oriented Vk.com client based on JSON Schema & dry-types'
  s.license = 'MIT'

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- exe/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = %w(lib)

  s.add_runtime_dependency('activesupport', '>= 4.2.2')
  s.add_runtime_dependency('oauth2')
  s.add_runtime_dependency('dry-types')
  s.add_runtime_dependency('dry-struct')

  s.add_development_dependency('rake')
  s.add_development_dependency('thor')
  s.add_development_dependency('rspec')
  s.add_development_dependency('simplecov')
  s.add_development_dependency('simplecov-html')
  s.add_development_dependency('yard')
  s.add_development_dependency('rubocop')
  s.add_development_dependency('redcarpet')
  s.add_development_dependency('yard-redcarpet-ext')
  s.add_development_dependency('pry')
  s.add_development_dependency('byebug')
  s.add_development_dependency('pry-byebug')
  s.add_development_dependency('dotenv')
  s.add_development_dependency('codeclimate-test-reporter')
end
