# module with enumerable methods
module MyEnumerable
  def all?
    each do |item|
      return false unless yield(item)
    end
    true
  end

  def any?
    each do |item|
      return true if yield(item)
    end
    false
  end

  def filter
    filtered_array = []
    each do |item|
      filtered_array << item if yield(item)
    end
    filtered_array
  end

  def max
    maxitem = 0
    each do |item|
      maxitem = item if maxitem && (item > maxitem)
    end
    maxitem
  end

  def min
    minitem = nil
    each do |item|
      if minitem
        minitem = item if item < minitem
      else
        minitem = item
      end
    end
    minitem
  end
end
