SimpleCov.start do
  add_group 'Generated', %w(lib/vk/api)
  add_group 'Schema', %w(lib/vk/schema)
end
CodeClimate::TestReporter.start
