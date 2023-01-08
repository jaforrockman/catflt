require 'test_helper'

class IvNumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @iv_num = iv_nums(:one)
  end

  test "should get index" do
    get iv_nums_url
    assert_response :success
  end

  test "should get new" do
    get new_iv_num_url
    assert_response :success
  end

  test "should create iv_num" do
    assert_difference('IvNum.count') do
      post iv_nums_url, params: { iv_num: { i_num: @iv_num.i_num } }
    end

    assert_redirected_to iv_num_url(IvNum.last)
  end

  test "should show iv_num" do
    get iv_num_url(@iv_num)
    assert_response :success
  end

  test "should get edit" do
    get edit_iv_num_url(@iv_num)
    assert_response :success
  end

  test "should update iv_num" do
    patch iv_num_url(@iv_num), params: { iv_num: { i_num: @iv_num.i_num } }
    assert_redirected_to iv_num_url(@iv_num)
  end

  test "should destroy iv_num" do
    assert_difference('IvNum.count', -1) do
      delete iv_num_url(@iv_num)
    end

    assert_redirected_to iv_nums_url
  end
end
