class Item
  attr_reader :item, :price, :discount

  def initialize(item,price,discount)
    @item     = item
    @price    = price
    @discount = discount
  end

end