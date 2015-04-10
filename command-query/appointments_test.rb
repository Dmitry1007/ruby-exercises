gem 'minitest', '~> 5.2'
require 'minitest/autorun'
# require 'minitest/pride'
require 'time'
require_relative '../command-query-lib/appointments'

class AppointmentsTest < Minitest::Test
  def test_no_appointments
    slots = Appointments.new
    assert_nil slots.earliest
  end

  def test_earliest_of_one
    slots = Appointments.new
    t1 = Time.new(2014, 3, 14, 4, 30).to_s
    slots.at t1
    assert_equal t1, slots.earliest
  end

  def test_earliest_of_several
    skip
    slots = Appointments.new
    t1 = Time.new(2014, 6, 14, 16, 30).to_s # June 14 4:30
    t2 = Time.new(2014, 2, 28, 8, 30).to_s  # Feb  28 8:30 
    t3 = Time.new(2014, 2, 28, 11).to_s     # Feb  28 11:00
                      
    slots.at t1
    slots.at t2
    slots.at t3
    assert_equal t2, slots.earliest
  end
end
