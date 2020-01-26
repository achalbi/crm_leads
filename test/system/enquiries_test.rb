require "application_system_test_case"

class EnquiriesTest < ApplicationSystemTestCase
  setup do
    @enquiry = enquiries(:one)
  end

  test "visiting the index" do
    visit enquiries_url
    assert_selector "h1", text: "Enquiries"
  end

  test "creating a Enquiry" do
    visit enquiries_url
    click_on "New Enquiry"

    fill_in "Cabin type", with: @enquiry.cabin_type
    fill_in "Capacity", with: @enquiry.capacity
    fill_in "Capacity units", with: @enquiry.capacity_units
    fill_in "Enquiry date", with: @enquiry.enquiry_date
    fill_in "Floor count", with: @enquiry.floor_count
    fill_in "Floor destination", with: @enquiry.floor_destination
    fill_in "Lift type", with: @enquiry.lift_type
    fill_in "Lifts count", with: @enquiry.lifts_count
    fill_in "Machine mounting room", with: @enquiry.machine_mounting_room
    fill_in "Openings count", with: @enquiry.openings_count
    fill_in "Shaft depth", with: @enquiry.shaft_depth
    fill_in "Shaft width", with: @enquiry.shaft_width
    fill_in "Stops count", with: @enquiry.stops_count
    click_on "Create Enquiry"

    assert_text "Enquiry was successfully created"
    click_on "Back"
  end

  test "updating a Enquiry" do
    visit enquiries_url
    click_on "Edit", match: :first

    fill_in "Cabin type", with: @enquiry.cabin_type
    fill_in "Capacity", with: @enquiry.capacity
    fill_in "Capacity units", with: @enquiry.capacity_units
    fill_in "Enquiry date", with: @enquiry.enquiry_date
    fill_in "Floor count", with: @enquiry.floor_count
    fill_in "Floor destination", with: @enquiry.floor_destination
    fill_in "Lift type", with: @enquiry.lift_type
    fill_in "Lifts count", with: @enquiry.lifts_count
    fill_in "Machine mounting room", with: @enquiry.machine_mounting_room
    fill_in "Openings count", with: @enquiry.openings_count
    fill_in "Shaft depth", with: @enquiry.shaft_depth
    fill_in "Shaft width", with: @enquiry.shaft_width
    fill_in "Stops count", with: @enquiry.stops_count
    click_on "Update Enquiry"

    assert_text "Enquiry was successfully updated"
    click_on "Back"
  end

  test "destroying a Enquiry" do
    visit enquiries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Enquiry was successfully destroyed"
  end
end
