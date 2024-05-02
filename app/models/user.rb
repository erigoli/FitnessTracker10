class User < ApplicationRecord
  has_secure_password
  has_many :cardios
  has_many :stretchings
  has_many :treadmills
  has_many :strengths
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
  def total_cardios_consumed
    cardios.sum(:value)
  end
  def total_stretchings_consumed
    stretchings.sum(:value)
  end
  def total_treadmills_consumed
    treadmills.sum(:value)
  end
  def total_strengths_consumed
    strengths.sum(:value)
  end
end
