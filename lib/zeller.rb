$LOAD_PATH << "lib"
require 'assemble_month'

class Zeller

  def initialize(month, year, annual)
    self.zeller(month, year, annual)
  end

  def zeller(month, year, annual)
    #checks to see if the written format rather than the number format
    if month.to_s.length > 3
      month.downcase!
      month.capitalize!

      #converts to number format
      month = months.index(month)
      month += 1
    end

    h = ""
    q = 1
    m = month.to_i
    k = year%100
    j = year/100
    y = year.to_i

    if m < 3
      y -= 1
      m += 12
      h = ( (q + (((m+1)*26)/10) + y + (y/4) + (6*(y/100)) + (y/400)) % 7 )
    else
      h = ( (q + ((13*(m+1))/5) + k + (k/4) + (j/4) + (5*j) ) % 7 )
    end
    h -= 1

    assemble_month(h, m, year, annual)
  end #of zeller

end #of class
