#INPUT------------------------------------------------------
input = []
ARGV.each do |arg|
  input << arg
end

month = input[0].dup
year = input[1].dup
month.chomp!
year.chomp!

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
K = year[2,3].to_i
J = year[0,2].to_i
#puts "m: #{m}, K: #{K}, J: #{J}"

#m = 13 if m == 01
#m = 14 if m == 02

h = ( (q + ((13*(m+1))/5) + K + (K/4) + (J/4) + (5*J) ) % 7 )


#PRINT----------------------------------------------------------------
#in refactor stage, use regex to find abbreviations for months
days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
temp_day = days[h]
temp_month = months[q-1]
print "Your date is #{temp_day}, #{temp_month} #{q}, #{year}"





#NOTE FOR ZELLERS CONGRUENCE-------------
#test case = Sunday, January 1st, 2012
#h = day of week (unknown)
#q = day of month (date, 01-31)
#m = month (01 or January)
#K = year of the century (12 for 2012)
#J = century (20 for 2012)
#must chomp leading zeros (e.x. 8 for 08) because it will give an invalid octal error
