require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

task :default => [:test]

task :test do
  announce
  announce "Running cucumber tests"

  #directory "../output"
  file "../output" do |t| mkdir t.name end
  puts "Created output directory"
  Cucumber::Rake::Task.new

#  Cucumber::Rake::Task.new(:features) do |t|
#    t.cucumber_opts = "features --format pretty"
#  end
end

def announce(message="")
  text = " #{message} "
  length = [0, 75 - text.length].max
  puts "=%s=%s" % [text, "=" * length]
end
