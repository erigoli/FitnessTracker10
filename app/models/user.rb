class User < ApplicationRecord
  has_secure_password
  has_many :steps
  has_many :water_intakes
  has_many :calories, class_name: 'Calorie'
  def total_calories_consumed
    calories.sum(:amount)
  end
  def total_water_consumed
    water_intakes.sum(:gallons)
  end
  def total_steps_consumed
    steps.sum(:value)
  end

end
