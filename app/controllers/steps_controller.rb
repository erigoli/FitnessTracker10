class StepsController < ApplicationController
  def new
    @step = Step.new
  end

  def create
    @user = current_user # Adjust based on your user session management
    @last_step_record = @user.steps.last || @user.steps.create(value: 0)
    @last_step_record.value += step_params[:value].to_i
    if @last_step_record.save
      redirect_to new_step_path, notice: 'Steps updated successfully.'
    else
      render :new
    end
  end

  private

  def step_params
    params.require(:step).permit(:value)
  end
end
