class Music

  def loudness
    @loud = false
  end

  def loud?
    @loud
  end

  def turn_up
    @loud = true
  end

end