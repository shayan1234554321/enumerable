# Import my_enumerable.rb

require_relative 'my_enumerable'

# Create MyList class
class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def iterate(&block)
    @list.each { |item| block.call(item) }
  end
end
