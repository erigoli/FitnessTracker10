class CaloriesController < ApplicationController
  def new
    @calorie = Calorie.new
  end

  def create
    @user = current_user # Adjust based on your user session management
    @last_calorie_record = @user.calories.last || @user.calories.create(amount: 0)
    @last_calorie_record.amount += calorie_params[:amount].to_i
    if @last_calorie_record.save
      redirect_to new_calorie_path, notice: 'Calories updated successfully.'
    else
      render :new
    end
  end

  private

  def calorie_params
    params.require(:calorie).permit(:amount)
  end
end
