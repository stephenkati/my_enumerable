module MyEnumerable
  def all?()
    each { |elem| return false unless yield(elem) }
    true
  end

  def any?()
    each { |elem| return true if yield(elem) }
    false
  end

  def filter()
    result = []
    each { |elem| result << elem if yield(elem) }
    result
  end
end
