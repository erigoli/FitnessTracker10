class HeightsController < ApplicationController
  def new
    @height = Height.new
  end

  def create
    @user = current_user # Adjust based on your user session management
    @last_height_record = @user.heights.last || @user.heights.create(value: 0)
    @last_height_record.value += height_params[:value].to_i
    if @last_height_record.save
      redirect_to new_height_path, notice: 'Height updated successfully.'
    else
      render :new
    end
  end

  private

  def height_params
    params.require(:height).permit(:value)
  end
end
