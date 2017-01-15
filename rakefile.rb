require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

desc "Print version"
task :info  do
  puts "Print tasks version"
end

namespace :dir do
  OUTPUT_DIR = "output"
  LOG_FILE   = "logfile.txt"

  desc "Create directories"
  task :create => :clean do
    puts "task create directories"
    begin
      mkdir OUTPUT_DIR
    rescue Exception => error
      puts "Fail when :#{error}"
    end
  end

  desc "Clean directories"
  task :clean do
    puts "cleanning temp directories"
    deldir("")
  end

end

namespace :test do

  desc "Run cucumber tests"
  task :cuke do
    "Running cucumber tests"
    Cucumber::Rake::Task.new
  end

  Cucumber::Rake::Task.new(:features) do |t|
    t.cucumber_opts = "features --format pretty"
  end

end

def mkdir(path)
  FileUtils.mkdir_p path
end

def deldir(path)
  #FileUtils.rm LOG_FILE, :force => true   # never raises exception
end

# create a tasks with dependencies: e.g.
#task :create_dirs => :clean_env do

#  Cucumber::Rake::Task.new(:features) do |t|
#    t.cucumber_opts = "features --format pretty"
#  end
