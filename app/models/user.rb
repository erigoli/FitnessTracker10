class User < ApplicationRecord
  has_secure_password
  has_many :weightlossgoals
  has_many :weightlosses
  has_many :runnings
  has_many :runninggoals
  has_many :sleepings
  has_many :sleepinggoals
  has_many :weights
  has_many :heights
  has_many :ages
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
  def total_weights_consumed
    last_weight = weights.last
    last_weight.present? ? last_weight.value : nil
  end
  def total_heights_consumed
    last_height = heights.last
    last_height.present? ? last_height.value : nil
  end
  def total_ages_consumed
    last_age = ages.last
    last_age.present? ? last_age.value : nil
  end
  def total_weightlossgoals_consumed
    weightlossgoals.sum(:value)
  end
  def total_weightlosses_consumed
    weightlosses.sum(:value)
  end
  def total_runnings_consumed
    runnings.sum(:value)
  end
  def total_runninggoals_consumed
    runninggoals.sum(:value)
  end
  def total_sleepings_consumed
    sleepings.sum(:value)
  end
  def total_sleepinggoals_consumed
    sleepinggoals.sum(:value)
  end
end
