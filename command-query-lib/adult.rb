class Adult

  def initialize
    @beverages_consumed = 0
  end

  def sober?
    @beverages_consumed < 3
    
  end

  def consume_an_alcoholic_beverage
    @beverages_consumed += 1
  end

  def sobriety 
    if @beverges_consumed > 3
      "The adult doesn't get more sober from drinking more."
    elsif @beverages_consumed > 2
      "Yeah, OK. The adult is drunk."
    elsif @beverages_consumed > 1  
      "Not drunk yet."
    else
      "Still sober."
    end     
  end
end
