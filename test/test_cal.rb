#require_relative 'helper'
require "minitest/autorun"

class TestCal < MiniTest::Unit::TestCase

#FORMAT TESTS--------------------------------------
  #naive input
  def test_forma_1_2012
    shell_output = ""
    IO.popen('ruby cal.rb 1 2012', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    expected_output = "Your date is Sunday, January 1, 2012"
    assert_equal expected_output, shell_output
  end

  #lowercase long input
  def test_format_january_2012
    shell_output = ""
    IO.popen('ruby cal.rb january 2012', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    expected_output = "Your date is Sunday, January 1, 2012"
    assert_equal expected_output, shell_output
  end

  #leading zeros input
  def test_format_08_2000
    shell_output = ""
    IO.popen('ruby cal.rb 08 2000', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    expected_output = "Your date is Tuesday, August 1, 2000"
    assert_equal expected_output, shell_output
  end


#EDGE CASE TESTS-------------------------------------
# 01-2012, 02-2012, 12-2012, 01-2014, 03-2014, 02-2015, 12-2015 01-1800, 02-1800, 07-1800, 12-1800, 01-1803, 02-1803

  def test_zeller_0_2000
    shell_output = ""
    IO.popen('ruby cal.rb 08 2000', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    expected_output = "Your date is Tuesday, August 1, 2000"
    assert_equal expected_output, shell_output
  end


#end of tests
end
