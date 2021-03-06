gem 'minitest', '~> 5.2'
require 'minitest/autorun'
# require 'minitest/pride'
require_relative '../command-query-lib/student'

class StudentTest < Minitest::Test
  def test_grade_is_mediocre
    student = Student.new
    assert_equal 'C', student.grade
  end

  def test_grade_can_improve
    student = Student.new
    student.study
    assert_equal "B", student.grade
    student.study
    assert_equal "A", student.grade
  end

  def test_as_good_as_it_gets
    student = Student.new
    3.times { student.study }
    assert_equal "A", student.grade
  end

  def test_grade_can_degrade
    student = Student.new
    student.slack_off
    assert_equal "D", student.grade
    student.slack_off
    assert_equal "F", student.grade
  end

  def test_grade_can_only_get_so_bad
    student = Student.new
    3.times { student.slack_off }
    assert_equal "F", student.grade
  end

  def test_slacking_off_is_immediately_noticable
    student = Student.new
    100.times { student.study }
    student.slack_off
    assert_equal "B", student.grade
  end

  def test_studying_helps_right_away
    student = Student.new
    100.times { student.slack_off }
    student.study
    assert_equal "D", student.grade
  end
end
