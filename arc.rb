#!/usr/bin/env ruby

class Arc
  attr_accessor :sys_status, :motor

  def turn_on
      @sys_status = :on
      puts "Arc on!"
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
    @sys_status = :off
    puts "Arc off"
  end
end
