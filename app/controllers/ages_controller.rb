class AgesController < ApplicationController
  def new
    @age = Age.new
  end

  def create
    @user = current_user # Adjust based on your user session management
    @last_age_record = @user.ages.last || @user.ages.create(value: 0)
    @last_age_record.value += age_params[:value].to_i
    if @last_age_record.save
      redirect_to new_age_path, notice: 'Age updated successfully.'
    else
      render :new
    end
  end

  private

  def age_params
    params.require(:age).permit(:value)
  end
end
