require 'test_helper'

class MessTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mess_type = mess_types(:one)
  end

  test "should get index" do
    get mess_types_url
    assert_response :success
  end

  test "should get new" do
    get new_mess_type_url
    assert_response :success
  end

  test "should create mess_type" do
    assert_difference('MessType.count') do
      post mess_types_url, params: { mess_type: { name: @mess_type.name } }
    end

    assert_redirected_to mess_type_url(MessType.last)
  end

  test "should show mess_type" do
    get mess_type_url(@mess_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_mess_type_url(@mess_type)
    assert_response :success
  end

  test "should update mess_type" do
    patch mess_type_url(@mess_type), params: { mess_type: { name: @mess_type.name } }
    assert_redirected_to mess_type_url(@mess_type)
  end

  test "should destroy mess_type" do
    assert_difference('MessType.count', -1) do
      delete mess_type_url(@mess_type)
    end

    assert_redirected_to mess_types_url
  end
end
