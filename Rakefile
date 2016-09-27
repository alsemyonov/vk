# frozen_string_literal: true
require 'bundler/setup'
Bundler::GemHelper.install_tasks
require 'pry'

desc 'Regenerate API from JSON Schema'
task :generate do
  require 'vk/schema/generator'
  generator = Vk::Schema::Generator.new
  generator.call
end
task default: :generate

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task default: :spec

require 'yard'
require 'yard/rake/yardoc_task'
YARD::Rake::YardocTask.new(:doc)
task default: :doc

require 'rubocop'
require 'rubocop/rake_task'
RuboCop::RakeTask.new(:cop)
task default: :cop
