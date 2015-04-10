class Appointments

  def initialize
    @time = nil
  end

  def earliest
    @time
  end

  def at(time)
    @time = [time].min
  end

end
