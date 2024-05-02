class StretchingsController < ApplicationController
  def new
    @stretching = Stretching.new
  end

  def create
    @user = current_user 
    @last_stretching_record = @user.stretchings.last || @user.stretchings.create(value: 0)
    @last_stretching_record.value += stretching_params[:value].to_i
    if @last_stretching_record.save
      redirect_to new_stretching_path, notice: 'Stretching updated successfully.'
    else
      render :new
    end
  end

  private

  def stretching_params
    params.require(:stretching).permit(:value)
  end
end
