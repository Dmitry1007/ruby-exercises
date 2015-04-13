class Money

  def initialize
    @amount = 0
  end

  def amount
    @amount
  end

  def earn(earnings)
    @amount += earnings
  end

  def spend(expenses)
    @amount -= expenses
  end

end