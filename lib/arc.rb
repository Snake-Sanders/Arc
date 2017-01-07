#!/usr/bin/env ruby
require 'rubygems'
require 'json'
require 'logging'



class Arc
  attr_accessor :sys_status, :motor, :conf, :log

  def initialize
      @sys_status = {
        :power => "off",
        :conf  => "empty"
      }
  end

  def turn_on
      @sys_status[:power] = "on"
      puts "Arc on!"
      sys_startup
  end

  def sys_startup
    puts "The system is starting:..."
    load_conf
    logger_init
  end
  def load_conf
    #jsonConf = File.read("conf.json")
    file_path = File.join(File.dirname(__FILE__), 'conf.json')
    begin
      @conf = JSON.parse(file_path)
    rescue JSON::ParserError
      puts "config in #{file_path}"
      JSON::ParserError
    end
    if @conf != nil
      if( @conf["conf_status"] == "loaded_ok")
        @sys_status[:conf] = "loaded"
        puts "config loaded ok"
      else
        puts "failed to load config"
      end
    end
  end

  def logger_init
    # @todo use config
    # default setting
    @log = Logging.logger(STDOUT)
    @log.level = :warn
  end

  def drive
    @motor = :drive
    puts "Arc driving!"
  end

  def stop
    @motor = :stop
    puts "Arc waiting"
  end

  def turn_off
    @motor = :stop
    @sys_status[:power] = "off"
    puts "Arc off"
  end
end
