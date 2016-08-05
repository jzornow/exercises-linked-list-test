class Link

  attr_reader :value, :rest
  attr_writer :value, :rest
  
  def initialize(init_value, init_rest)
    @value = init_value
    @rest = init_rest
  end

end