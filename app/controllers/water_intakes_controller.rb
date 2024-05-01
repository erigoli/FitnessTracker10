class WaterIntakesController < ApplicationController
  def new
    @water_intake = WaterIntake.new
  end

  def create
    @user = current_user # Adjust based on your user session management
    @last_water_record = @user.water_intakes.last || @user.water_intakes.create(gallons: 0)
    @last_water_record.gallons += water_intake_params[:gallons].to_f
    if @last_water_record.save
      redirect_to new_water_intake_path, notice: 'Water intake updated successfully.'
    else
      render :new
    end
  end

  private

  def water_intake_params
    params.require(:water_intake).permit(:gallons)
  end
end
