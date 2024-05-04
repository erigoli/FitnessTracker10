class RunninggoalsController < ApplicationController
  def new
    @runninggoal = Runninggoal.new
  end

  def create
    @user = current_user # Adjust based on your user session management
    @last_runninggoal_record = @user.runninggoals.last || @user.runninggoals.create(value: 0)
    @last_runninggoal_record.value += runninggoal_params[:value].to_i
    if @last_runninggoal_record.save
      redirect_to new_runninggoal_path, notice: 'Running Goal updated successfully.'
    else
      render :new
    end
  end

  private

  def runninggoal_params
    params.require(:runninggoal).permit(:value)
  end
end
