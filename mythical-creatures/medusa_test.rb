gem 'minitest', '~> 5.2'
require 'minitest/autorun'
# require 'minitest/pride'
require_relative '../mythical-creatures-lib/medusa'

class MedusaTest < Minitest::Test
  def test_it_has_a_name
    medusa = Medusa.new("Cassiopeia")
    assert_equal "Cassiopeia", medusa.name
  end

  def test_can_stare
    medusa = Medusa.new("Cassiopeia")
    assert medusa.respond_to?(:stare)
  end

  def test_has_statues
    medusa = Medusa.new("Cassiopeia")
    assert medusa.respond_to?(:statues)
  end

  def test_when_first_created_she_has_no_statues
    medusa = Medusa.new("Cassiopeia")
    assert medusa.statues.empty?
  end

  def test_when_staring_at_a_person_she_gains_a_statue
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")

    medusa.stare(victim)
    assert_equal 1, medusa.statues.count
    assert_equal "Perseus", medusa.statues.first.name
  end

  def test_when_staring_at_a_person_that_person_turns_to_stone
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")

    refute victim.stoned?
    medusa.stare(victim)
    assert victim.stoned?
  end

  def test_when_she_stairs_at_the_5th_victim_the_1rst_becomes_un_stoned?
    medusa = Medusa.new("Cassiopeia")
    victim1 = Person.new("Perseus")
    victim2 = Person.new("Samski")
    victim3 = Person.new("Euclid")
    victim4 = Person.new("Aristotle")
    victim5 = Person.new("Plato")

    medusa.stare(victim1)
    medusa.stare(victim2)
    medusa.stare(victim3)
    medusa.stare(victim4)
    [victim1, victim2, victim3, victim4].each do |v|
      assert v.stoned?
    end

    medusa.stare(victim5)
    assert victim5.stoned?
    refute victim1.stoned?
    refute medusa.statues.include?(victim1)
  end

end
