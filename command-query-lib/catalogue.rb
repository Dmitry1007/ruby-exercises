class Catalogue

  def initialize
    @catalogue = []
  end

  def <<(product)
    @catalogue << product
  end

  def cheapest
    if @catalogue.empty?
      nil
    else
      @catalogue[-1].type
    end
  end

end

