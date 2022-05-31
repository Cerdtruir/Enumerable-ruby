require_relative 'my_enumerable'

# class that accepts an array and allows use of my_enumerable methods
class MyList
  def initialize(*array)
    @list = array
  end

  include MyEnumerable

  def each
    i = 0
    while i < @list.length
      yield @list[i]
      i += 1
    end
  end
end

list = MyList.new(1, 2, 3, 4)

puts(list.all? { |e| e < 5 })
puts(list.all? { |e| e > 5 })

puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 5 })

p(list.filter { |e| (e % 3).zero? })

p(list.max)

p(list.min)
