class CardiosController < ApplicationController
  def new
    @cardio = Cardio.new
  end

  def create
    @user = current_user # Adjust based on your user session management
    @last_cardio_record = @user.cardios.last || @user.cardios.create(value: 0)
    @last_cardio_record.value += cardio_params[:value].to_i
    if @last_cardio_record.save
      redirect_to new_cardio_path, notice: 'Cardios updated successfully.'
    else
      render :new
    end
  end

  private

  def cardio_params
    params.require(:cardio).permit(:value)
  end
end
