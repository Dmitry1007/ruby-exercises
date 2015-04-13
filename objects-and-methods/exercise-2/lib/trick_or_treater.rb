class TrickOrTreater
  attr_reader :bag

  def initialize(costume)
    @costume     = costume
    @bag         = []
    @sugar_level = 0
  end

  def dressed_up_as
    @costume.style
  end

  def has_candy?
    @bag.size != 0
  end

  def <<(candy)
    @bag << candy
  end

  def candy_count
    @bag.size
  end

  def eat
    @sugar_level += @bag[-1].sugar
    @bag.pop
  end

  def sugar_level
    @sugar_level
  end
end

