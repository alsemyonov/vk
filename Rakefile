require 'bundler/setup'
Bundler::GemHelper.install_tasks

begin
  require 'rspec/core/rake_task'

  desc 'Run specs'
  RSpec::Core::RakeTask.new do |t|
    t.rspec_opts = %w(--color)
    t.verbose = false
  end
rescue LoadError
  task :spec do
    abort 'install rspec to run specs ($ bundle install)'
  end
end

begin
  require 'yard'
  require 'yard/rake/yardoc_task'

  desc 'Generate documentation'
  YARD::Rake::YardocTask.new(:doc)
rescue LoadError
  task :doc do
    abort 'install yard to generate documentation ($ bundle install)'
  end
end

task default: :spec
