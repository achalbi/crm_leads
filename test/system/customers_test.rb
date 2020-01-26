require "application_system_test_case"

class CustomersTest < ApplicationSystemTestCase
  setup do
    @customer = customers(:one)
  end

  test "visiting the index" do
    visit customers_url
    assert_selector "h1", text: "Customers"
  end

  test "creating a Customer" do
    visit customers_url
    click_on "New Customer"

    fill_in "Company address", with: @customer.company_address
    fill_in "Company name", with: @customer.company_name
    fill_in "Email", with: @customer.email
    fill_in "Hand over date", with: @customer.hand_over_date
    fill_in "Name", with: @customer.name
    fill_in "Phone", with: @customer.phone
    fill_in "Site address", with: @customer.site_address
    fill_in "Site name", with: @customer.site_name
    fill_in "String", with: @customer.string
    fill_in "Title", with: @customer.title
    click_on "Create Customer"

    assert_text "Customer was successfully created"
    click_on "Back"
  end

  test "updating a Customer" do
    visit customers_url
    click_on "Edit", match: :first

    fill_in "Company address", with: @customer.company_address
    fill_in "Company name", with: @customer.company_name
    fill_in "Email", with: @customer.email
    fill_in "Hand over date", with: @customer.hand_over_date
    fill_in "Name", with: @customer.name
    fill_in "Phone", with: @customer.phone
    fill_in "Site address", with: @customer.site_address
    fill_in "Site name", with: @customer.site_name
    fill_in "String", with: @customer.string
    fill_in "Title", with: @customer.title
    click_on "Update Customer"

    assert_text "Customer was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer" do
    visit customers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer was successfully destroyed"
  end
end
