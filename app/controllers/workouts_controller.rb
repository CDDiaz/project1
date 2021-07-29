class WorkoutsController < ApplicationController
  before_action :check_for_login

  def index
    @workouts = Workout.all
  end

  def new
    @workout = Workout.new
  end

  def create
    workout = Workout.create workout_params
    redirect_to workout
  end

  def edit
    @workout = Workout.find params[:id]
  end

  def update
    workout = Workout.find params[:id]
    workout.update workout_params
    redirect_to workout
  end

  def show
    @workout = Workout.find params[:id]
  end

  def destroy
    workout = Workout.find params[:id]
    workout.destroy
    redirect_to workouts_path
  end

  private
  def workout_params
    params.require(:workout).permit(:name, :category, :age_range, :description)
  end
end
