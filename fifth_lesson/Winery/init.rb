require 'Date'
require_relative 'winery/winery'
require_relative 'winery/user'
require_relative 'winery/calculate_years'


p User.new('Julie', '1996-07-22').years_old # => 20
p Winery.new('A Light Drop', '1954-08-01').years_old # => 62