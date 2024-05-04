class SleepingsController < ApplicationController
  def new
    @sleeping = Sleeping.new
  end

  def create
    @user = current_user # Adjust based on your user session management
    @last_sleeping_record = @user.sleepings.last || @user.sleepings.create(value: 0)
    @last_sleeping_record.value += sleeping_params[:value].to_i
    if @last_sleeping_record.save
      redirect_to new_sleeping_path, notice: 'Sleeping updated successfully.'
    else
      render :new
    end
  end

  private

  def sleeping_params
    params.require(:sleeping).permit(:value)
  end
end

