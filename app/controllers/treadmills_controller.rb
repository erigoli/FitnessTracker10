class TreadmillsController < ApplicationController
  def new
    @treadmill = Treadmill.new
  end

  def create
    @user = current_user 
    @last_treadmill_record = @user.treadmills.last || @user.treadmills.create(value: 0)
    @last_treadmill_record.value += treadmill_params[:value].to_i
    if @last_treadmill_record.save
      redirect_to new_treadmill_path, notice: 'Treadmill updated successfully.'
    else
      render :new
    end
  end

  private

  def treadmill_params
    params.require(:treadmill).permit(:value)
  end
end
