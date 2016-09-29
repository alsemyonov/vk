SimpleCov.start do
  add_filter '/bin/'
  add_filter '/spec/'
  add_group 'Generated', %w(lib/vk/api)
  add_group 'Schema', %w(lib/vk/schema)
end
require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start
