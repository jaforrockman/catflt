require 'test_helper'

class CollVcrsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coll_vcr = coll_vcrs(:one)
  end

  test "should get index" do
    get coll_vcrs_url
    assert_response :success
  end

  test "should get new" do
    get new_coll_vcr_url
    assert_response :success
  end

  test "should create coll_vcr" do
    assert_difference('CollVcr.count') do
      post coll_vcrs_url, params: { coll_vcr: { coll_date: @coll_vcr.coll_date, company_id: @coll_vcr.company_id, invoice_num: @coll_vcr.invoice_num, references: @coll_vcr.references } }
    end

    assert_redirected_to coll_vcr_url(CollVcr.last)
  end

  test "should show coll_vcr" do
    get coll_vcr_url(@coll_vcr)
    assert_response :success
  end

  test "should get edit" do
    get edit_coll_vcr_url(@coll_vcr)
    assert_response :success
  end

  test "should update coll_vcr" do
    patch coll_vcr_url(@coll_vcr), params: { coll_vcr: { coll_date: @coll_vcr.coll_date, company_id: @coll_vcr.company_id, invoice_num: @coll_vcr.invoice_num, references: @coll_vcr.references } }
    assert_redirected_to coll_vcr_url(@coll_vcr)
  end

  test "should destroy coll_vcr" do
    assert_difference('CollVcr.count', -1) do
      delete coll_vcr_url(@coll_vcr)
    end

    assert_redirected_to coll_vcrs_url
  end
end
