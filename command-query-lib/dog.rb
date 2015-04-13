class Dog

  def initialize
    @hunger = true
  end

  def hungry?
    @hunger
  end

  def eat
    @hunger = false
  end

end