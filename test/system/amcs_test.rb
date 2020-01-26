require "application_system_test_case"

class AmcsTest < ApplicationSystemTestCase
  setup do
    @amc = amcs(:one)
  end

  test "visiting the index" do
    visit amcs_url
    assert_selector "h1", text: "Amcs"
  end

  test "creating a Amc" do
    visit amcs_url
    click_on "New Amc"

    fill_in "From date", with: @amc.from_date
    fill_in "Price", with: @amc.price
    fill_in "Tax type", with: @amc.tax_type
    fill_in "To date", with: @amc.to_date
    fill_in "Total", with: @amc.total
    fill_in "Type", with: @amc.type
    click_on "Create Amc"

    assert_text "Amc was successfully created"
    click_on "Back"
  end

  test "updating a Amc" do
    visit amcs_url
    click_on "Edit", match: :first

    fill_in "From date", with: @amc.from_date
    fill_in "Price", with: @amc.price
    fill_in "Tax type", with: @amc.tax_type
    fill_in "To date", with: @amc.to_date
    fill_in "Total", with: @amc.total
    fill_in "Type", with: @amc.type
    click_on "Update Amc"

    assert_text "Amc was successfully updated"
    click_on "Back"
  end

  test "destroying a Amc" do
    visit amcs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Amc was successfully destroyed"
  end
end
