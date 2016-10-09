module CalculateYears
  def years_old
    Time.now.year - @date.year
  end
end