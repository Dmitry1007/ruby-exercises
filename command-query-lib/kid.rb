class Kid

  def initialize
    @sugar_consumed = 0
    @hyperactive = false
  end

  def grams_of_sugar_eaten
    @sugar_consumed
  end

  def eat_candy
    @sugar_consumed += 5
  end

  def hyperactive?
    if @sugar_consumed >= 60
      @hyperactive = true
    end
  end



end