class StrengthsController < ApplicationController
  def new
    @strength = Strength.new
  end

  def create
    @user = current_user 
    @last_strength_record = @user.strengths.last || @user.strengths.create(value: 0)
    @last_strength_record.value += strength_params[:value].to_i
    if @last_strength_record.save
      redirect_to new_strength_path, notice: 'Strength updated successfully.'
    else
      render :new
    end
  end

  private

  def strength_params
    params.require(:strength).permit(:value)
  end
end
