class MeasurementsController < ApplicationController
  before_action :check_for_login

  def index
    @measurements = Measurement.all
  end

  def new
    @measurement = Measurement.new
  end

  def create
    measurement = Measurement.create measurement_params
    @current_user.measurements << measurement
    redirect_to measurement
  end

  def edit
    @measurement = Measurement.find params[:id]
  end

  def update
    measurement = Measurement.find params[:id]
    measurement.update measurement_params
    redirect_to measurement
  end

  def show
    @measurement = Measurement.find params[:id]
  end

  def destroy
    measurement = Measurement.find params[:id]
    measurement.destroy
    redirect_to measurements_path
  end

  private
  def measurement_params
    params.require(:measurement).permit(:weight, :height, :body_fat, :user_id)
  end
end
