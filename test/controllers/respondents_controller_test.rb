require 'test_helper'

class RespondentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @respondent = respondents(:one)
  end

  test "should get index" do
    get respondents_url
    assert_response :success
  end

  test "should get new" do
    get new_respondent_url
    assert_response :success
  end

  test "should create respondent" do
    assert_difference('Respondent.count') do
      post respondents_url, params: { respondent: { company_address: @respondent.company_address, company_name: @respondent.company_name, email: @respondent.email, lead_date: @respondent.lead_date, lead_source: @respondent.lead_source, lead_type: @respondent.lead_type, name: @respondent.name, phone: @respondent.phone, select_executive: @respondent.select_executive, site: @respondent.site, string: @respondent.string, title: @respondent.title } }
    end

    assert_redirected_to respondent_url(Respondent.last)
  end

  test "should show respondent" do
    get respondent_url(@respondent)
    assert_response :success
  end

  test "should get edit" do
    get edit_respondent_url(@respondent)
    assert_response :success
  end

  test "should update respondent" do
    patch respondent_url(@respondent), params: { respondent: { company_address: @respondent.company_address, company_name: @respondent.company_name, email: @respondent.email, lead_date: @respondent.lead_date, lead_source: @respondent.lead_source, lead_type: @respondent.lead_type, name: @respondent.name, phone: @respondent.phone, select_executive: @respondent.select_executive, site: @respondent.site, string: @respondent.string, title: @respondent.title } }
    assert_redirected_to respondent_url(@respondent)
  end

  test "should destroy respondent" do
    assert_difference('Respondent.count', -1) do
      delete respondent_url(@respondent)
    end

    assert_redirected_to respondents_url
  end
end
