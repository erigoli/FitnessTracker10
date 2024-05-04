class WeightlossgoalsController < ApplicationController
  def new
    @weightlossgoal = Weightlossgoal.new
  end

  def create
    @user = current_user # Adjust based on your user session management
    @last_weightlossgoal_record = @user.weightlossgoals.last || @user.weightlossgoals.create(value: 0)
    @last_weightlossgoal_record.value += weightlossgoal_params[:value].to_i
    if @last_weightlossgoal_record.save
      redirect_to new_weightlossgoal_path, notice: 'Weightloss Goal updated successfully.'
    else
      render :new
    end
  end

  private

  def weightlossgoal_params
    params.require(:weightlossgoal).permit(:value)
  end
end
