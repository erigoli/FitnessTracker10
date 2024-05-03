class WeightsController < ApplicationController
  def new
    @weight = Weight.new
  end

  def create
    @user = current_user # Adjust based on your user session management
    @last_weight_record = @user.weights.last || @user.weights.create(value: 0)
    @last_weight_record.value += weight_params[:value].to_i
    if @last_weight_record.save
      redirect_to new_weight_path, notice: 'Weight updated successfully.'
    else
      render :new
    end
  end

  private

  def weight_params
    params.require(:weight).permit(:value)
  end
end
