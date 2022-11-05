require_relative 'enumerable'
# class with a enumerable methods

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each
    yield(@list)
  end
end

list = MyList.new(1, 2, 3, 4)

p(list.all? { |e| e < 5 })

p(list.all? { |e| e > 5 })

p(list.any? { |e| e == 2 })

p(list.any? { |e| e == 5 })

p(list.filter(&:even?))
