class WeightlossesController < ApplicationController
  def new
    @weightloss = Weightloss.new
  end

  def create
    @user = current_user # Adjust based on your user session management
    @last_weightloss_record = @user.weightlosses.last || @user.weightlosses.create(value: 0)
    @last_weightloss_record.value += weightloss_params[:value].to_i
    if @last_weightloss_record.save
      redirect_to new_weightloss_path, notice: 'Weightloss Goal updated successfully.'
    else
      render :new
    end
  end

  private

  def weightloss_params
    params.require(:weightloss).permit(:value)
  end
end
