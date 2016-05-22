begin
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new(:spec)

  task default: :spec
rescue LoadError
  puts "Rspec unavaliable, please make sure it's installed."
end
