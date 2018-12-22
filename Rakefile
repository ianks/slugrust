require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

require 'thermite/tasks'

Thermite::Tasks.new

desc 'Run Rust & Ruby testsuites'
task spec: ['thermite:build', 'thermite:test'] do
  puts 'Hello bors!?'
end

task default: :spec
