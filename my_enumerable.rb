# Create MyEnumerable module
module MyEnumerable
  def my_all?
    each do |element|
      return false unless yield(element)
    end
    true
  end

  def my_any?
    each do |element|
      return true if yield(element)
    end
    false
  end

  def my_select
    result = []
    each do |element|
      result << element if yield(element)
    end
    result
  end
end