class Cupcake < Struct.new(:kind, :sugar)

# Cupcake is inheriting attributes
# :kind and :sugar

  def flavor
    self.kind
  end

end
