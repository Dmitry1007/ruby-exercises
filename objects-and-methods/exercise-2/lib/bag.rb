require 'pry'

class Bag
  attr_reader :count, :candies

  def initialize
    @candies = []
    @count = 0
    @taken_candies = []
  end

  def empty?
    @candies.size == 0
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
    num.times do
      @taken_candies << @candies.pop
    end
    @count -= @taken_candies.size
    return @taken_candies
  end

end



# bag = Bag.new
# bag << Candy.new("Lindt chocolate")

# bag.contains?("Hershey's chocolate")