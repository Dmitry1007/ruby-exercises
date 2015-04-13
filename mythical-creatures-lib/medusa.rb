class Medusa
  attr_reader :name

  def initialize(name)
    @name    = name
    @statues = []
  end

  def stare(victim)
    victim.stoned!
    @statues << victim

    if @statues.size == 5
      @statues[0].human!
      @statues.shift  
    end
  end

  def statues
    @statues
  end

end

class Person
  attr_reader :name

  def initialize(name)
    @name   = name
    human! 
  end

  def stoned?
    @stoned 
  end

  def stoned!
    @stoned = true
  end

  def human!
    @stoned = false
  end

end