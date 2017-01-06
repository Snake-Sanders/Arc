#!/usr/bin/env ruby

class Arc
  attr_accessor :arc_main_status, :motor

  def turn_on
      @arc_main_status = :on
      puts "Arc on!"
  end

  def drive
    @motor = :drive
    puts "Arc driving!"
  end

  def turn_off
    @motor = :stop
    @arc_main_status = :off
    puts "Arc off"
  end
end
