# Import my_enumerable.rb

require_relative 'my_enumerable'

# Create MyList class
class CustomList
  include MyEnumerable
  def initialize(*items)
    @items = items
  end

  def iterate(&block)
    @items.each { |item| block.call(item) }
  end
end