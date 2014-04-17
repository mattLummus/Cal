#require_relative 'helper'
require "minitest/autorun"

class TestCal < MiniTest::Unit::TestCase

  def test_format_cal_01_2012
    shell_output = ""
    IO.popen('ruby cal.rb 01 2012', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    expected_output = <<EOS
    January 2012
Su Mo Tu We Th Fr Sa
EOS
    assert_equal expected_output, shell_output
  end


=begin
#FORMAT TESTS--------------------------------------
  #naive input
  def test_format_1_2012
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


#ZELLER'S CONGRUENCE TESTS-------------------------------------
# 01-2012, 02-2012, 12-2012, 01-2014, 02-2014, 03-2014, 02-2015, 12-2015 01-1800, 02-1800, 07-1800, 12-1800, 01-1803, 02-1803, 12-1803

#2012
  def test_zeller_01_2012
    shell_output = ""
    IO.popen('ruby cal.rb 01 2012', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    expected_output = "Your date is Sunday, January 1, 2012"
    assert_equal expected_output, shell_output
  end

  def test_zeller_02_2012
    shell_output = ""
    IO.popen('ruby cal.rb 02 2012', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    expected_output = "Your date is Wednesday, February 1, 2012"
    assert_equal expected_output, shell_output
  end

  def test_zeller_12_2012
    shell_output = ""
    IO.popen('ruby cal.rb 12 2012', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    expected_output = "Your date is Saturday, December 1, 2012"
    assert_equal expected_output, shell_output
  end

#2014
  def test_zeller_01_2014
    shell_output = ""
    IO.popen('ruby cal.rb 01 2014', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    expected_output = "Your date is Wednesday, January 1, 2014"
    assert_equal expected_output, shell_output
  end

  def test_zeller_02_2014
    shell_output = ""
    IO.popen('ruby cal.rb 02 2014', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    expected_output = "Your date is Saturday, February 1, 2014"
    assert_equal expected_output, shell_output
  end

  def test_zeller_03_2014
    shell_output = ""
    IO.popen('ruby cal.rb 03 2014', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    expected_output = "Your date is Saturday, March 1, 2014"
    assert_equal expected_output, shell_output
  end

#2015
  def test_zeller_02_2015
    shell_output = ""
    IO.popen('ruby cal.rb 02 2015', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    expected_output = "Your date is Sunday, February 1, 2015"
    assert_equal expected_output, shell_output
  end

  def test_zeller_12_2015
    shell_output = ""
    IO.popen('ruby cal.rb 12 2015', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    expected_output = "Your date is Tuesday, December 1, 2015"
    assert_equal expected_output, shell_output
  end

#1800
  def test_zeller_01_1800
    shell_output = ""
    IO.popen('ruby cal.rb 01 1800', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    expected_output = "Your date is Wednesday, January 1, 1800"
    assert_equal expected_output, shell_output
  end

  def test_zeller_02_1800
    shell_output = ""
    IO.popen('ruby cal.rb 02 1800', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    expected_output = "Your date is Saturday, February 1, 1800"
    assert_equal expected_output, shell_output
  end

  def test_zeller_07_1800
    shell_output = ""
    IO.popen('ruby cal.rb 07 1800', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    expected_output = "Your date is Tuesday, July 1, 1800"
    assert_equal expected_output, shell_output
  end

  def test_zeller_12_1800
    shell_output = ""
    IO.popen('ruby cal.rb 12 1800', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    expected_output = "Your date is Monday, December 1, 1800"
    assert_equal expected_output, shell_output
  end

#1803
  def test_zeller_01_1803
    shell_output = ""
    IO.popen('ruby cal.rb 01 1803', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    expected_output = "Your date is Saturday, January 1, 1803"
    assert_equal expected_output, shell_output
  end

  def test_zeller_02_1803
    shell_output = ""
    IO.popen('ruby cal.rb 02 1803', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    expected_output = "Your date is Tuesday, February 1, 1803"
    assert_equal expected_output, shell_output
  end

  def test_zeller_12_1803
    shell_output = ""
    IO.popen('ruby cal.rb 12 1803', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    expected_output = "Your date is Thursday, December 1, 1803"
    assert_equal expected_output, shell_output
  end
=end

#end of tests
end
