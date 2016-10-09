require_relative 'calculate_years'

class User

  include CalculateYears

  def initialize(name, date_of_birth)
    @name = name
    @date = Date.parse date_of_birth
  end

  def to_s
    "#{@name} - Date: #{@date}"
  end

end
