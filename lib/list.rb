require 'link'
require 'errors'

class List

  def initialize(*items)
    @head = cursor = nil

    items.reverse.each do |item|
      cursor = Link.new(item, cursor)
      @head = cursor
    end
  end

  def length
    each_with_object(0) do |link, length_so_far|
      length_so_far += 1
    end
  end

  def to_s
    each_with_object('') do |link, output_string|
      connector = ' - ' unless link.rest.nil?
      output_string << "#{link.value}#{connector}"
    end
  end

  def each_with_object(init_value)
    cursor = @head
    return_value = init_value
    until cursor.nil?
      return_value = yield(cursor, return_value)
      cursor = cursor.rest
    end

    return_value
  end

  def empty?
    @head.nil?
  end

  def [](index)
    raise IndexOutOfBoundsException.new(index) if index >= length
    cursor = @head
    count = 0

    while count < index
      count += 1
      cursor = cursor.rest
    end
    cursor.value
  end

  def slow_middle
    raise NoMiddleException.new if empty?
    # Full Pass + Half Pass => O(3n/2)
    middle_index = ((length - 1)/2.0).floor # Full Pass
    self[middle_index] # Half Pass
  end

end
