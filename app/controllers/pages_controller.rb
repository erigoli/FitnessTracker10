class PagesController < ApplicationController
  before_action :require_login

  def index
    @user = current_user
    @total_calories_consumed = @user.total_calories_consumed
    @total_water_consumed = @user.total_water_consumed
    @total_steps_consumed = @user.total_steps_consumed
    @total_cardios_consumed = @user.total_cardios_consumed
    @total_stretchings_consumed = @user.total_stretchings_consumed
    @total_treadmills_consumed = @user.total_treadmills_consumed
    @total_strengths_consumed = @user.total_strengths_consumed
  end

  private

  def require_login
    unless logged_in?
      redirect_to login_path, alert: "You must be logged in to access this page"
    end
  end
end
