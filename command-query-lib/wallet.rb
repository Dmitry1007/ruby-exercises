class Wallet

  def initialize
    @currency = {
      :nil     => 0,
      :penny   => 1, 
      :nickel  => 5, 
      :dime    => 10,
      :quarter => 25,
      :dollar  => 100
    }
    @wallet = [0]
  end

  def cents
    @wallet.reduce(:+)
  end

  def <<(penny)
    @wallet << @currency[penny]
  end

  def take(coin,coins = :nil)
    if @wallet.include?(@currency[coin])
      @wallet.slice!(@wallet.index(@currency[coin]))
      @wallet.slice!(@wallet.index(@currency[coins]))
    end
  end
end