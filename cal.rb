#INPUT------------------------------------------------------
input = []
ARGV.each do |arg|
  input << arg
end

month = input[0].dup
year = input[1].dup
month.chomp!
year.chomp!
year = year.to_i

#in refactor stage, use regex to find abbreviations for months
months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

#checks to see if the written format rather than the number format
if month.length > 3
  month.downcase!
  month.capitalize!

  #converts to number format
  month = months.index(month)
  month += 1
end

#ZELLERS CONGRUENCE--------------------------------------------------
h = ""
q = 1
m = month.to_i
k = year%100
j = year/100
y = year.to_i
#puts "m: #{m}, K: #{K}, J: #{J}"

if m < 3
  y -= 1
  m += 12
  h = ( (q + (((m+1)*26)/10) + y + (y/4) + (6*(y/100)) + (y/400)) % 7 )
else
  h = ( (q + ((13*(m+1))/5) + k + (k/4) + (j/4) + (5*j) ) % 7 )
end


#PRINT 1ST DAY OF MONTH----------------------------------------------------------------
#in refactor stage, use regex to find abbreviations for months
days = [ "Saturday", "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
temp_day = days[h]
m -= 12 if m > 12
temp_month = months[m-1]
print "Your date is #{temp_day}, #{temp_month} #{q}, #{year}"

#PRINT MONTH CALENDAR----------------------------------------------------------------
=begin
    January 2012
20spaces
11111111111111111111
2char + 1 space
Su Mo Tu We Th Fr Sa
1char1space||2char + 1 spaces
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31




=end

#NOTE FOR ZELLERS CONGRUENCE-------------
#test case = Sunday, January 1st, 2012
#h = day of week (unknown)
#q = day of month (date, 01-31)
#m = month (01 or January)
#K = year of the century (12 for 2012)
#J = century (20 for 2012)
#must chomp leading zeros (e.x. 8 for 08) because it will give an invalid octal error
