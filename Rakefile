require "./server"
require "sinatra/activerecord/rake"
require "rspec/core/rake_task"

begin
  RSpec::Core::RakeTask.new(:spec => ["db:test:prepare"])
rescue LoadError
  puts "Please 'bundle', first."
end

task default: [Rake::Task["db:test:prepare"], :spec]
