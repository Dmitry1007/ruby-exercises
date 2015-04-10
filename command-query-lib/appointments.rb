class Appointments

  def initialize
    @time = nil   # => nil
  end             # => :initialize

  def earliest
    @time
  end           # => :earliest

  def at(time)
    @time = [time].min  # => 2014-06-14 16:30:00 -0600, 2014-02-28 08:30:00 -0700, 2014-02-28 11:00:00 -0700
  end                   # => :at

end  # => :at

slots = Appointments.new  # => #<Appointments:0x007fe0ab006f70 @time=nil>
    t1 = Time.new(2014, 6, 14, 16, 30)# June 14 4:30
    t2 = Time.new(2014, 2, 28, 8, 30) # Feb  28 8:30 
    t3 = Time.new(2014, 2, 28, 11)    # Feb  28 11:00

    slots.at t1  # => 2014-06-14 16:30:00 -0600
    slots.at t2  # => 2014-02-28 08:30:00 -0700
    slots.at t3  # => 2014-02-28 11:00:00 -0700