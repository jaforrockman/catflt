require 'test_helper'

class CateringsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @catering = caterings(:one)
  end

  test "should get index" do
    get caterings_url
    assert_response :success
  end

  test "should get new" do
    get new_catering_url
    assert_response :success
  end

  test "should create catering" do
    assert_difference('Catering.count') do
      post caterings_url, params: { catering: { name: @catering.name, short_name: @catering.short_name } }
    end

    assert_redirected_to catering_url(Catering.last)
  end

  test "should show catering" do
    get catering_url(@catering)
    assert_response :success
  end

  test "should get edit" do
    get edit_catering_url(@catering)
    assert_response :success
  end

  test "should update catering" do
    patch catering_url(@catering), params: { catering: { name: @catering.name, short_name: @catering.short_name } }
    assert_redirected_to catering_url(@catering)
  end

  test "should destroy catering" do
    assert_difference('Catering.count', -1) do
      delete catering_url(@catering)
    end

    assert_redirected_to caterings_url
  end
end
