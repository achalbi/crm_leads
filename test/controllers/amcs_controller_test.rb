require 'test_helper'

class AmcsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @amc = amcs(:one)
  end

  test "should get index" do
    get amcs_url
    assert_response :success
  end

  test "should get new" do
    get new_amc_url
    assert_response :success
  end

  test "should create amc" do
    assert_difference('Amc.count') do
      post amcs_url, params: { amc: { from_date: @amc.from_date, price: @amc.price, tax_type: @amc.tax_type, to_date: @amc.to_date, total: @amc.total, type: @amc.type } }
    end

    assert_redirected_to amc_url(Amc.last)
  end

  test "should show amc" do
    get amc_url(@amc)
    assert_response :success
  end

  test "should get edit" do
    get edit_amc_url(@amc)
    assert_response :success
  end

  test "should update amc" do
    patch amc_url(@amc), params: { amc: { from_date: @amc.from_date, price: @amc.price, tax_type: @amc.tax_type, to_date: @amc.to_date, total: @amc.total, type: @amc.type } }
    assert_redirected_to amc_url(@amc)
  end

  test "should destroy amc" do
    assert_difference('Amc.count', -1) do
      delete amc_url(@amc)
    end

    assert_redirected_to amcs_url
  end
end
