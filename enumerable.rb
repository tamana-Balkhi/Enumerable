module MyEnumerable
  # self refers to the class that includes this module
  # @list is the instance variable of the class that includes this module
  # yeild is the block that is passed to the method so yield(element) is the same as block.call(e)
  def all?
    @list.each do |element| # element is the condition to be checked
      return false unless yield element # if the condition is false, return false
    end
    true # if all elements pass the condition
  end

  def any?
    @list.each do |element|
      return true if yield element
    end
    false
  end

  def filter
    result = []
    @list.each do |element|
      result << element if yield element # if the condition is true, push the element to the result
    end
    result
  end
end
