#INPUT-----------------------------------------------------------------
puts "Which Month Do You Want To See?"
puts "e.x. 01 2012, Jan 2012, january 2012, etc."
input = gets.chomp
input.downcase!

input.capitalize!
puts "Here is your initial input: #{input}"



#ZELLERS CONGRUENCE---------------------------------------------------
=begin
#test case = Sunday, January 1st, 2012
#[sun, mon, tues, wed, thurs, fri, sat] =
#[0,1,2,3,4,5,6]
#h = day of week (unknown)
#q = day of month (date, 01-31)
#m = month (01 or January)
#K = year of the century (12 for 2012)
#J = century (20 for 2012)
puts "Test case = Sunday, January 1st, 2012"
h = ""
q = 01
m = 01
K = 12
J = 20

#m = 13 if m == 01
#m = 14 if m == 02

h = ((q + (((m+1)*26)/10) + K + (K/4) + (J/4) +(5*J)) % 7)
puts h

#PRINT----------------------------------------------------------------
days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
temp_day = days[h]
temp_month = months[q]
puts "Your date is #{temp_day}, #{temp_month} #{q}, #{J}#{K}"
=end
