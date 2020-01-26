require "application_system_test_case"

class RespondentsTest < ApplicationSystemTestCase
  setup do
    @respondent = respondents(:one)
  end

  test "visiting the index" do
    visit respondents_url
    assert_selector "h1", text: "Respondents"
  end

  test "creating a Respondent" do
    visit respondents_url
    click_on "New Respondent"

    fill_in "Company address", with: @respondent.company_address
    fill_in "Company name", with: @respondent.company_name
    fill_in "Email", with: @respondent.email
    fill_in "Lead date", with: @respondent.lead_date
    fill_in "Lead source", with: @respondent.lead_source
    fill_in "Lead type", with: @respondent.lead_type
    fill_in "Name", with: @respondent.name
    fill_in "Phone", with: @respondent.phone
    fill_in "Select executive", with: @respondent.select_executive
    fill_in "Site", with: @respondent.site
    fill_in "String", with: @respondent.string
    fill_in "Title", with: @respondent.title
    click_on "Create Respondent"

    assert_text "Respondent was successfully created"
    click_on "Back"
  end

  test "updating a Respondent" do
    visit respondents_url
    click_on "Edit", match: :first

    fill_in "Company address", with: @respondent.company_address
    fill_in "Company name", with: @respondent.company_name
    fill_in "Email", with: @respondent.email
    fill_in "Lead date", with: @respondent.lead_date
    fill_in "Lead source", with: @respondent.lead_source
    fill_in "Lead type", with: @respondent.lead_type
    fill_in "Name", with: @respondent.name
    fill_in "Phone", with: @respondent.phone
    fill_in "Select executive", with: @respondent.select_executive
    fill_in "Site", with: @respondent.site
    fill_in "String", with: @respondent.string
    fill_in "Title", with: @respondent.title
    click_on "Update Respondent"

    assert_text "Respondent was successfully updated"
    click_on "Back"
  end

  test "destroying a Respondent" do
    visit respondents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Respondent was successfully destroyed"
  end
end
