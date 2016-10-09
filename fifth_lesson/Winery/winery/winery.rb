require_relative 'calculate_years'

class Winery

  include CalculateYears

  def initialize(title, date_of_foundation)
    @title = title
    @date = Date.parse date_of_foundation
  end

  def to_s
    "#{@title} - Date: #{@date}"
  end

end