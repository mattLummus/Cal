$LOAD_PATH << "lib"
require 'print_cal'

class Assemble

  def initialize(h, m, year, annual)
    assemble_month(h, m, year, annual)
  end

  def assemble_month(h, m, year, annual)
    #contains array of strings to be assembled when printed
    this_month = []

    days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    day_array = [31, "x", 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    temp_day = days[h]
    m -= 12 if m > 12
    month = @months[m-1]
    days = day_array[m-1]

    if days == "x"
      if year % 4 != 0
        days = 28
      elsif year % 100 != 0 || year % 400 == 0
        days = 29
      else
        days = 28
      end
    end

    #CAL HEADER-------
    total_length = 20
    month_length = month.length
    header = ""
    if @month == "annual"
      margin_space = (total_length - month_length) / 2
      margin_space.times { header << " " }
      header << month
    else
      margin_space = (total_length - (month_length + 5)) / 2
      margin_space.times { header << " " }
      header << month
      header << " "
      header << year.to_s
    end

    #push header to array
    this_month << header
    this_month << "Su Mo Tu We Th Fr Sa"

    #CAL DATES-------
    day = 1
    count = 0
    row = ""
    h = 6 if h == -1
    leading_space = (h*3) + 1
    count += leading_space
    leading_space.times do
      row << " "
    end
    row << "1"
    count += 1
    day += 1

    #finish 1st row
    while count < 20
      if day < 10
        row << "  "
      else
        row << " "
      end
      row << day.to_s
      day += 1
      count += 3
    end

    #push 1st row to array
    this_month << row
    row_count = 1

    #other rows
    while day <= days
      count = 0
      row = ""
      day_count = 0
      while day_count <= 7
        day_count += 1
        while count < 20
          row << " " if day < 10
          row << day.to_s
          day += 1
          count += 3
          row << " " if count < 19
        end
      end

      #chops at last day
      last_day = row.index(days.to_s)
      row = row[0,last_day+2] if last_day

      #push other rows to array
      this_month << row
      row_count += 1
    end
    (6 - row_count).times {this_month << ""}

    if annual == true
      @calendar << this_month
      annual_print if @calendar.length == 12
    else
      single_print(this_month)
    end

  end #of assemble_month

end #of class
