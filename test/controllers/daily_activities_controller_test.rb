require 'test_helper'

class DailyActivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daily_activity = daily_activities(:one)
  end

  test "should get index" do
    get daily_activities_url, as: :json
    assert_response :success
  end

  test "should create daily_activity" do
    assert_difference('DailyActivity.count') do
      post daily_activities_url, params: { daily_activity: { date: @daily_activity.date, description: @daily_activity.description, dog_id: @daily_activity.dog_id, kind: @daily_activity.kind, name: @daily_activity.name } }, as: :json
    end

    assert_response 201
  end

  test "should show daily_activity" do
    get daily_activity_url(@daily_activity), as: :json
    assert_response :success
  end

  test "should update daily_activity" do
    patch daily_activity_url(@daily_activity), params: { daily_activity: { date: @daily_activity.date, description: @daily_activity.description, dog_id: @daily_activity.dog_id, kind: @daily_activity.kind, name: @daily_activity.name } }, as: :json
    assert_response 200
  end

  test "should destroy daily_activity" do
    assert_difference('DailyActivity.count', -1) do
      delete daily_activity_url(@daily_activity), as: :json
    end

    assert_response 204
  end
end
