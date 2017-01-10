#!/usr/bin/env ruby
require 'rubygems'
require 'json'
require 'logging'

require_relative 'startup'

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
      sys_start
  end

  def sys_start
    puts "The system is starting:..."
    load_conf
    logger_init
  end

  # Load the configuration file
  def load_conf
    #jsonConf = File.read("conf.json")
    file_path = File.join(File.dirname(__FILE__), 'conf.json')
    begin
      conf_text = File.read(file_path)
      @conf = JSON.parse(conf_text)
    rescue JSON::ParserError => error
      puts "Error: Failed loading config from #{file_path},#{error}"
    end

    if @conf != nil
      if( @conf["conf_last_item"] == "exists")
        @sys_status[:conf] = "loaded"
        puts "config loaded ok"
      else
        puts "failed to load config"
      end
    end
  end

  # Sets the logger default parameters
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
