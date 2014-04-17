require 'cal_main'

input = []
ARGV.each do |arg|
  input << arg
end

month = input[0].dup
year = input[1].dup
month.chomp!
year.chomp!

if input.length > 2
  puts "Input Error! format is either 01 2012, 1 2012, or January 2012"

else
  #in refactor stage, use regex to find abbreviations for months
  months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
  if month.length > 3
    month = months.index(month)
    month += 1
  end

cal = CalMain.new(month, year)
end
