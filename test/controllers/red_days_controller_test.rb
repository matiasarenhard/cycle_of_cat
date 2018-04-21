require 'test_helper'

class RedDaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @red_day = red_days(:one)
  end

  test "should get index" do
    get red_days_url
    assert_response :success
  end

  test "should get new" do
    get new_red_day_url
    assert_response :success
  end

  test "should create red_day" do
    assert_difference('RedDay.count') do
      post red_days_url, params: { red_day: { good_day: @red_day.good_day } }
    end

    assert_redirected_to red_day_url(RedDay.last)
  end

  test "should show red_day" do
    get red_day_url(@red_day)
    assert_response :success
  end

  test "should get edit" do
    get edit_red_day_url(@red_day)
    assert_response :success
  end

  test "should update red_day" do
    patch red_day_url(@red_day), params: { red_day: { good_day: @red_day.good_day } }
    assert_redirected_to red_day_url(@red_day)
  end

  test "should destroy red_day" do
    assert_difference('RedDay.count', -1) do
      delete red_day_url(@red_day)
    end

    assert_redirected_to red_days_url
  end
end
