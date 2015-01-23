class Brewery < ActiveRecord::Base
  has_many :beers
  
  def print_report
    puts name
    puts "established in the year #{year}"
    puts "number of products #{beers.count}"
  end
  
  def restart
    self.year = 2015
    puts "changed year to #{year}"
  end
end
