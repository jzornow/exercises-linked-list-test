require 'link'

class List
  def initialize(*items)
    @head = cursor = nil

    items.reverse.each do |item|
      cursor = Link.new(item, cursor)
      @head = cursor
    end
  end

  def length
    cursor = @head
    sum = 0
    until cursor.nil?
      sum += 1
      cursor = cursor.rest
    end
    sum
  end
end