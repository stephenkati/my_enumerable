require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new([1, 2, 3, 4])

list.all?(&:positive?) #=> true
list.all? { |num| num > 2 } #=> false

list.any? { |num| num > 3 } #=> true
list.any?(&:negative?) #=> false

list.filter(&:even?) #=> [2, 4]