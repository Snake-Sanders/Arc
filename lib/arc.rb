#!/usr/bin/env ruby
require 'rubygems'
require 'json'

class Arc
  attr_accessor :sys_status, :motor, :conf

  def initialize
      @sys_status = {
        :power => :off,
        :conf  => :empty
      }
  end

  def turn_on
      @sys_status[:power] = "on"
      puts "Arc on!"
  end

  def load_conf
    jsonConf = File.read("conf.json")
    @conf = JSON.parse(jsonConf)

    if( @conf["conf_status"] == "loaded_ok")
      puts "failed to load config"
    else
      @sys_status[:conf] = :loaded
    end
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
