module PowerSwitch
  def switch_power(new_power_state)
    if new_power_state == "on"
      @arc.turn_on
    else
      @arc.turn_off
    end
  end

  def power_state_is(power_state)
    expect(power_state).to eq(@arc.sys_status[:power].to_s)
  end
end

World(PowerSwitch)
