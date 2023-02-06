require 'test_helper'

class CompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company = companies(:one)
  end

  test "should get index" do
    get companies_url
    assert_response :success
  end

  test "should get new" do
    get new_company_url
    assert_response :success
  end

  test "should create company" do
    assert_difference('Company.count') do
<<<<<<< HEAD
      post companies_url, params: { company: { name: @company.name } }
=======
      post companies_url, params: { company: { Address: @company.Address, name: @company.name, phone: @company.phone, status: @company.status } }
>>>>>>> ff9fa4288ea21eff91f5e459b353f2e4b07899e0
    end

    assert_redirected_to company_url(Company.last)
  end

  test "should show company" do
    get company_url(@company)
    assert_response :success
  end

  test "should get edit" do
    get edit_company_url(@company)
    assert_response :success
  end

  test "should update company" do
<<<<<<< HEAD
    patch company_url(@company), params: { company: { name: @company.name } }
=======
    patch company_url(@company), params: { company: { Address: @company.Address, name: @company.name, phone: @company.phone, status: @company.status } }
>>>>>>> ff9fa4288ea21eff91f5e459b353f2e4b07899e0
    assert_redirected_to company_url(@company)
  end

  test "should destroy company" do
    assert_difference('Company.count', -1) do
      delete company_url(@company)
    end

    assert_redirected_to companies_url
  end
end
