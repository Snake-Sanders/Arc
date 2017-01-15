# Here indicate what has to be done before and after each feature execution

Before do |scenario|
  # The +scenario+ argument is optional, but if you use it, you can get the title,
  # description, or name (title + description) of the scenario that is about to be
  # executed.

  #Rails.logger.debug "Starting scenario: #{scenario.title}"
  @arc = Arc.new

end
