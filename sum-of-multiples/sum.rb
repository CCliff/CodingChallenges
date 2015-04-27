require 'pry'
class SumOfMultiples

  def initialize(*multiples)
    @multiples = multiples
  end

  def self.to(limit)
    array = [0]
    [3,5].each do |multiple|
      num = multiple
      while num < limit
        array << num
        num += multiple
      end
    end
    array.uniq.reduce(:+)
  end

  def to(limit)
    array = [0]
    @multiples.each do |multiple|
      counter = 1
      num = multiple * counter
      while num <= limit
        array << num
        counter += 1
        num = multiple * counter
      end
    end
    array.uniq.reduce(:+)
  end

end