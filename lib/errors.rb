class IndexOutOfBoundsException < StandardError
  def initialize(index)
    super("Index #{index} is beyond the bounds of this list.")
  end
end
