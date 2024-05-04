class RunningsController < ApplicationController
  def new
    @running = Running.new
  end

  def create
    @user = current_user # Adjust based on your user session management
    @last_running_record = @user.runnings.last || @user.runnings.create(value: 0)
    @last_running_record.value += running_params[:value].to_i
    if @last_running_record.save
      redirect_to new_running_path, notice: 'Running updated successfully.'
    else
      render :new
    end
  end

  private

  def running_params
    params.require(:running).permit(:value)
  end
end
