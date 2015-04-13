class Teenager

  def initialize
    @sober = true
  end

  def drunk?
    @sober
  end

  def consume_an_alcoholic_beverage
    @sober = false
  end

end