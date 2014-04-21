require_relative 'helper'
require "test/unit"

class TestCal < Test::Unit::TestCase

#NUMBER OF ROWS TESTS-------------------------------------
=begin
  def test_cal_2012_rows_02
    shell_output = ""
    expected_output = ""
    IO.popen('./cal 2014 rows 2', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    assert_equal "", shell_output
  end
=end

#SINGLE MONTH PRINT TESTS-------------------------------------
#2012, 2014, 2015, 1800, 1803, 2000, 2500, 3000

  def test_cal_year_2012
    shell_output = ""
    expected_output = ""
    IO.popen('./cal 2012', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    IO.popen('cal 2012', 'r+') do |pipe|
      pipe.close_write
      expected_output = pipe.read
    end
    assert_equal expected_output, shell_output
  end

  def test_cal_year_2014
    shell_output = ""
    expected_output = ""
    IO.popen('./cal 2014', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    IO.popen('cal 2014', 'r+') do |pipe|
      pipe.close_write
      expected_output = pipe.read
    end
    assert_equal expected_output, shell_output
  end

  def test_cal_year_2015
    shell_output = ""
    expected_output = ""
    IO.popen('./cal 2015', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    IO.popen('cal 2015', 'r+') do |pipe|
      pipe.close_write
      expected_output = pipe.read
    end
    assert_equal expected_output, shell_output
  end

  def test_cal_year_1800
    shell_output = ""
    expected_output = ""
    IO.popen('./cal 1800', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    IO.popen('cal 1800', 'r+') do |pipe|
      pipe.close_write
      expected_output = pipe.read
    end
    assert_equal expected_output, shell_output
  end

  def test_cal_year_2000
    shell_output = ""
    expected_output = ""
    IO.popen('./cal 2000', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    IO.popen('cal 2000', 'r+') do |pipe|
      pipe.close_write
      expected_output = pipe.read
    end
    assert_equal expected_output, shell_output
  end

  def test_cal_year_2500
    shell_output = ""
    expected_output = ""
    IO.popen('./cal 2500', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    IO.popen('cal 2500', 'r+') do |pipe|
      pipe.close_write
      expected_output = pipe.read
    end
    assert_equal expected_output, shell_output
  end

  def test_cal_year_3000
    shell_output = ""
    expected_output = ""
    IO.popen('./cal 3000', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    IO.popen('cal 3000', 'r+') do |pipe|
      pipe.close_write
      expected_output = pipe.read
    end
    assert_equal expected_output, shell_output
  end

#SINGLE MONTH PRINT TESTS-------------------------------------
# 01-2012, 02-2012, 12-2012, 01-2014, 02-2014, 03-2014, 02-2015, 12-2015 01-1800, 02-1800, 07-1800, 12-1800, 01-1803, 02-1803, 12-1803

#2012
  def test_cal_01_2012
    shell_output = ""
    expected_output = ""
    IO.popen('./cal 01 2012', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    IO.popen('cal 01 2012', 'r+') do |pipe|
      pipe.close_write
      expected_output = pipe.read
    end
    puts "-----------------------"
    puts "cal_01_2012"
    puts "expected_output:"
    puts expected_output
    puts "shell_output:"
    puts shell_output
    puts "-----------------------"
    assert_equal expected_output, shell_output
  end

  def test_cal_02_2012
    shell_output = ""
    expected_output = ""
    IO.popen('./cal 02 2012', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    IO.popen('cal 02 2012', 'r+') do |pipe|
      pipe.close_write
      expected_output = pipe.read
    end
    puts "-----------------------"
    puts "cal_02_2012"
    puts "expected_output:"
    puts expected_output
    puts "shell_output:"
    puts shell_output
    puts "-----------------------"
    assert_equal expected_output, shell_output
  end

  def test_cal_12_2012
    shell_output = ""
    expected_output = ""
    IO.popen('./cal 12 2012', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    IO.popen('cal 12 2012', 'r+') do |pipe|
      pipe.close_write
      expected_output = pipe.read
    end
    puts "-----------------------"
    puts "cal_12_2012"
    puts "expected_output:"
    puts expected_output
    puts "shell_output:"
    puts shell_output
    puts "-----------------------"
    assert_equal expected_output, shell_output
  end

#2014
  def test_cal_01_2014
    shell_output = ""
    expected_output = ""
    IO.popen('./cal 01 2014', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    IO.popen('cal 01 2014', 'r+') do |pipe|
      pipe.close_write
      expected_output = pipe.read
    end
    puts "-----------------------"
    puts "cal_01_2014"
    puts "expected_output:"
    puts expected_output
    puts "shell_output:"
    puts shell_output
    puts "-----------------------"
    assert_equal expected_output, shell_output
  end

  def test_cal_02_2014
    shell_output = ""
    expected_output = ""
    IO.popen('./cal 02 2014', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    IO.popen('cal 02 2014', 'r+') do |pipe|
      pipe.close_write
      expected_output = pipe.read
    end
    puts "cal_02_2014"
    puts "expected_output:"
    puts expected_output
    puts "shell_output:"
    puts shell_output
    assert_equal expected_output, shell_output
  end

  def test_cal_03_2014
    shell_output = ""
    expected_output = ""
    IO.popen('./cal 03 2014', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    IO.popen('cal 03 2014', 'r+') do |pipe|
      pipe.close_write
      expected_output = pipe.read
    end
    puts "-----------------------"
    puts "cal_03_2014"
    puts "expected_output:"
    puts expected_output
    puts "shell_output:"
    puts shell_output
    puts "-----------------------"
    assert_equal expected_output, shell_output
  end

#2015
  def test_cal_02_2015
    shell_output = ""
    expected_output = ""
    IO.popen('./cal 02 2015', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    IO.popen('cal 02 2015', 'r+') do |pipe|
      pipe.close_write
      expected_output = pipe.read
    end
    puts "-----------------------"
    puts "cal_02_2015"
    puts "expected_output:"
    puts expected_output
    puts "shell_output:"
    puts shell_output
    puts "-----------------------"
    assert_equal expected_output, shell_output
  end

  def test_cal_12_2015
    shell_output = ""
    expected_output = ""
    IO.popen('./cal 12 2015', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    IO.popen('cal 12 2015', 'r+') do |pipe|
      pipe.close_write
      expected_output = pipe.read
    end
    puts "-----------------------"
    puts "cal_12_2015"
    puts "expected_output:"
    puts expected_output
    puts "shell_output:"
    puts shell_output
    puts "-----------------------"
    assert_equal expected_output, shell_output
  end

#1800
  def test_cal_01_1800
    shell_output = ""
    expected_output = ""
    IO.popen('./cal 01 1800', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    IO.popen('cal 01 1800', 'r+') do |pipe|
      pipe.close_write
      expected_output = pipe.read
    end
    puts "-----------------------"
    puts "cal_01_1800"
    puts "expected_output:"
    puts expected_output
    puts "shell_output:"
    puts shell_output
    puts "-----------------------"
    assert_equal expected_output, shell_output
  end

  def test_cal_02_1800
    shell_output = ""
    expected_output = ""
    IO.popen('./cal 02 1800', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    IO.popen('cal 02 1800', 'r+') do |pipe|
      pipe.close_write
      expected_output = pipe.read
    end
    puts "-----------------------"
    puts "cal_02_1800"
    puts "expected_output:"
    puts expected_output
    puts "shell_output:"
    puts shell_output
    puts "-----------------------"
    assert_equal expected_output, shell_output
  end

  def test_cal_07_1800
    shell_output = ""
    expected_output = ""
    IO.popen('./cal 07 1800', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    IO.popen('cal 07 1800', 'r+') do |pipe|
      pipe.close_write
      expected_output = pipe.read
    end
    puts "-----------------------"
    puts "cal_07_1800"
    puts "expected_output:"
    puts expected_output
    puts "shell_output:"
    puts shell_output
    puts "-----------------------"
    assert_equal expected_output, shell_output
  end

  def test_cal_12_1800
    shell_output = ""
    expected_output = ""
    IO.popen('./cal 12 1800', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    IO.popen('cal 12 1800', 'r+') do |pipe|
      pipe.close_write
      expected_output = pipe.read
    end
    puts "-----------------------"
    puts "cal_12_1800"
    puts "expected_output:"
    puts expected_output
    puts "shell_output:"
    puts shell_output
    puts "-----------------------"
    assert_equal expected_output, shell_output
  end

#1803
  def test_cal_01_1803
    shell_output = ""
    expected_output = ""
    IO.popen('./cal 01 1803', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    IO.popen('cal 01 1803', 'r+') do |pipe|
      pipe.close_write
      expected_output = pipe.read
    end
    puts "-----------------------"
    puts "cal_01_1803"
    puts "expected_output:"
    puts expected_output
    puts "shell_output:"
    puts shell_output
    puts "-----------------------"
    assert_equal expected_output, shell_output
  end

  def test_cal_02_1803
    shell_output = ""
    expected_output = ""
    IO.popen('./cal 02 1803', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    IO.popen('cal 02 1803', 'r+') do |pipe|
      pipe.close_write
      expected_output = pipe.read
    end
    puts "-----------------------"
    puts "cal_02_1803"
    puts "expected_output:"
    puts expected_output
    puts "shell_output:"
    puts shell_output
    puts "-----------------------"
    assert_equal expected_output, shell_output
  end

  def test_cal_07_1803
    shell_output = ""
    expected_output = ""
    IO.popen('./cal 07 1803', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    IO.popen('cal 07 1803', 'r+') do |pipe|
      pipe.close_write
      expected_output = pipe.read
    end
    puts "-----------------------"
    puts "cal_07_1803"
    puts "expected_output:"
    puts expected_output
    puts "shell_output:"
    puts shell_output
    puts "-----------------------"
    assert_equal expected_output, shell_output
  end

  def test_cal_12_1803
    shell_output = ""
    expected_output = ""
    IO.popen('./cal 12 1803', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    IO.popen('cal 12 1803', 'r+') do |pipe|
      pipe.close_write
      expected_output = pipe.read
    end
    puts "-----------------------"
    puts "cal_12_1803"
    puts "expected_output:"
    puts expected_output
    puts "shell_output:"
    puts shell_output
    puts "-----------------------"
    assert_equal expected_output, shell_output
  end


#TESTS COMMENTED OUT BECAUSE THEY ARE PASSING AND TEXT OUTPUT HAS BEEN REPLACED BY CALENDAR
=begin

  def test_format_cal_header_03_2012
    shell_output = ""
    IO.popen('ruby cal.rb 03 2012', 'r+') do |pipe|
      pipe.close_write
      shell_output = pipe.read
    end
    expected_output = <<EOS
     March 2012
Su Mo Tu We Th Fr Sa
             1
EOS
    assert_equal expected_output, shell_output
  end
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
