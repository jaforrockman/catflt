require 'test_helper'

class VoucherTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @voucher_type = voucher_types(:one)
  end

  test "should get index" do
    get voucher_types_url
    assert_response :success
  end

  test "should get new" do
    get new_voucher_type_url
    assert_response :success
  end

  test "should create voucher_type" do
    assert_difference('VoucherType.count') do
      post voucher_types_url, params: { voucher_type: { name: @voucher_type.name } }
    end

    assert_redirected_to voucher_type_url(VoucherType.last)
  end

  test "should show voucher_type" do
    get voucher_type_url(@voucher_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_voucher_type_url(@voucher_type)
    assert_response :success
  end

  test "should update voucher_type" do
    patch voucher_type_url(@voucher_type), params: { voucher_type: { name: @voucher_type.name } }
    assert_redirected_to voucher_type_url(@voucher_type)
  end

  test "should destroy voucher_type" do
    assert_difference('VoucherType.count', -1) do
      delete voucher_type_url(@voucher_type)
    end

    assert_redirected_to voucher_types_url
  end
end
