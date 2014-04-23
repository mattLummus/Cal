#!/usr/bin/env ruby

#Calendar is called at end of file
class Calendar

  def initialize(*args)

  end


  def single_print(this_month)
    this_month.each do |line|
      puts line
    end
  end


  def annual_print
    print_title = true
    index = 0

    @format_array.each do |rows, columns|
      if print_title == true
        title_line = ""
        title_space = ( (20*columns) + (2*(columns-1)) -4 ) / 2
        (title_space - 1).times {title_line << " "}
        title_line << @year.to_s
        puts title_line
        line_break = ""
        puts line_break
      end

      rows.times do #rows
        print_title = false
        temp_months = []
        column_index = 0
        columns.times do
          temp_months << @calendar[index + column_index]
          column_index += 1
        end
        line_index = 0

        8.times do #lines per row
          temp_string = ""
          inner_index = 0

          columns.times do #each month per row
            temp_month = temp_months[inner_index]
            temp_line = temp_month[line_index]
            temp_string << temp_line
            if inner_index != columns - 1
              (20 - temp_line.length).times {temp_string << " "}
            end
            temp_string << "  " if inner_index < columns - 1
            puts temp_string if inner_index == columns - 1
            inner_index += 1
          end #of inner loop (iterates through each month on current row)

          line_index += 1
        end #of row loop (concats current months onto same lines)

        index += columns
      end #of column loop
    end #of format loop
  end #of annual_print


end #of class

