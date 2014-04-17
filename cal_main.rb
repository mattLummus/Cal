class CalMain

  def initialize(month, year)
    @month = month
    @year = year
    zeller(month, year)
  end

  def zeller(month, year)

    #ZELLERS CONGRUENCE---------------------------------------------------
    #test case = Sunday, January 1st, 2012
    #h = day of week (unknown)
    #q = day of month (date, 01-31)
    #m = month (01 or January)
    #K = year of the century (12 for 2012)
    #J = century (20 for 2012)
    #must chomp leading zeros (e.x. 8 for 08) because it will give an invalid octal error

    h = ""
    q = 1
    m = month.to_i
    K = year[2,3].to_i
    J = year[0,2].to_i
    #puts "m: #{m}, K: #{K}, J: #{J}"

    #m = 13 if m == 01
    #m = 14 if m == 02

    h = ((q + (((m+1)*26)/10) + K + (K/4) + (J/4) +(5*J)) % 7)
    return h
#end zeller
end

  def print_date

    #PRINT----------------------------------------------------------------
    #in refactor stage, use regex to find abbreviations for months
    days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    temp_day = days[h]
    temp_month = months[q-1]
    print "Your date is #{temp_day}, #{temp_month} #{q}, #{J}#{K}"

  #end print_date
  end

end
