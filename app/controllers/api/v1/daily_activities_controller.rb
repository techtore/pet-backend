class Api::V1::DailyActivitiesController < ApplicationController
  before_action :set_daily_activity, only: [:show, :update, :destroy]
  before_action set_dog

  # GET /daily_activities
  def index
    @daily_activities = DailyActivity.all

    render json: @daily_activities
  end

  # GET /daily_activities/1
  def show
    render json: @daily_activity
  end

  # POST /daily_activities
  def create
    daily_activity = dog.daily_activities.new(daily_activity_params)

    if daily_activity.save
      render json: daily_activity, status: :created, location: daily_activity
    else
      render json: daily_activity.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /daily_activities/1
  def update
    if @daily_activity.update(daily_activity_params)
      render json: @daily_activity
    else
      render json: @daily_activity.errors, status: :unprocessable_entity
    end
  end

  # DELETE /daily_activities/1
  def destroy
    @daily_activity.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_activity
      @daily_activity = DailyActivity.find(params[:id])
    end

    def set_dog
      dog = Dog.find_by(id: params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def daily_activity_params
      params.require(:daily_activity).permit(:name, :kind, :date, :description, :dog_id)
    end
end
