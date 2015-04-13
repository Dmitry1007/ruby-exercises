# class Catalogue

#   def initialize
#     @catalogue = []
#   end

#   def <<(product)
#     @catalogue << product
#   end

#   def cheapest
#     cheapo = @catalogue.min_by { |obj| obj.cost }
#     cheapo.type if cheapo # is not equal to nil
#   end

# end

## OR ##

class Catalogue < Array

  def cheapest
    cheapo = self.min_by { |obj| obj.cost }
    cheapo.type if cheapo != nil
  end

end
