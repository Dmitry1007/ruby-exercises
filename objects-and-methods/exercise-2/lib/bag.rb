require_relative '../lib/candy'
require 'pry'

class Bag

  def initialize
    @candies = []
    @count = 0
  end

  def empty?
    @candies.size == 0
  end

  def count
    @count
  end

  def candies
    @candies
  end

  def <<(candy)
    @candies << candy
    @count += 1
  end

  def contains?(candy)
    @candies[0].type == candy
  end

  def grab(candy)
    @count -= 1
    @candies[0]
  end

  def type
    @candies[0].type
  end

  def take(num)
    @candies.pop 
  end

  def size
    
  end

end



# bag = Bag.new
# bag << Candy.new("Lindt chocolate")

# bag.contains?("Hershey's chocolate")