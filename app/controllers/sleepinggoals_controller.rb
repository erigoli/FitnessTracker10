class SleepinggoalsController < ApplicationController
  def new
    @sleepinggoal = Sleepinggoal.new
  end

  def create
    @user = current_user # Adjust based on your user session management
    @last_sleepinggoal_record = @user.sleepinggoals.last || @user.sleepinggoals.create(value: 0)
    @last_sleepinggoal_record.value += sleepinggoal_params[:value].to_i
    if @last_sleepinggoal_record.save
      redirect_to new_sleepinggoal_path, notice: 'Sleeping Goal updated successfully.'
    else
      render :new
    end
  end

  private

  def sleepinggoal_params
    params.require(:sleepinggoal).permit(:value)
  end
end
